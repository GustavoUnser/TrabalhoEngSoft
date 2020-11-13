default(:json) do
    {
        'AJAXREQUEST'                            => '_viewRoot',
        'formCotacao'                            => 'formCotacao',
        'formCotacao:flgMgsCritica'              => 'N',
        'formCotacao:cdUsuarioLogado'            => '',
        'formCotacao:codCotacao'                 => '',
        'formCotacao:mostraMsgAnalise'           => 'false',
        'formCotacao:reExibePanelEnvioAnalise'   => 'N',
        'formCotacao:reExibePanelAvaliarCotacao' => 'N',
        'formCotacao:exibePanelEnderecos'        => 'N',
        'formCotacao:exibePanelCepInvalido'      => 'N',
        'formCotacao:reExibePanelEditarFranquia' => 'N',
        'formCotacao:exibeMensagemDesconto'      => '',
        'formCotacao:inpFoco'                    => '',
        'formCotacao:listaIdsCamposAntetior'     => '',
        'formCotacao:ICodCorretor'               => '',
        'formCotacao:INomeCorretor'              => '',
        'formCotacao:IAgenciaProdutora'          => '',
        'formCotacao:IDigitoProdutora'           => '',
        'formCotacao:ICdPostoAtendimento'        => '',
        'formCotacao:IResidencialCorretor'       => '4',
        'formCotacao:IOperacaoEspecial'          => '4',
        'formCotacao:IContato'                   => 'SEGFY',
        'formCotacao:ITelefoneContato'           => '',
        'formCotacao:IEmailContato'              => '',
        'formCotacao:ITipoPrazo'                 => '1',
        'formCotacao:IInicioVigencia'            => '',
        'formCotacao:IFimVigencia'               => '',
        'formCotacao:IDias'                      => '365', 
        'formCotacao:ITipoPessoa'                => '',
        'formCotacao:ICpfCnpjProponente'         => '',
        'formCotacao:INomeProponente'            => '',
        'formCotacao:ICliente'                   => '1', 
        'formCotacao:ICepER'                     => '',
        'formCotacao:ITipoLogradouroER'          => '',
        'formCotacao:ILogradouroER'              => '',
        'formCotacao:INumeroER'                  => '',
        'formCotacao:IComplementoER'             => '',
        'formCotacao:IBairroER'                  => '',
        'formCotacao:ICidadeER'                  => '',
        'formCotacao:IEstadoER'                  => '-1',
        'formCotacao:ITipoSeguro'                => '1',
        'formCotacao:IGrupoAtividade'            => '',
        'formCotacao:IAtividade'                 => '-1',
        'formCotacao:ITipoConstrucaoImovel'      => '-1',
        'formCotacao:IObjetoSeguro'              => '-1',
        'formCotacao:IAssist24hs'                => '-1',
        'formCotacao:ICepPop'                    => '',
        'formCotacao:ITipoLogradouroPop'         => '',
        'formCotacao:ILogradouroPop'             => '',
        'formCotacao:INumeroPop'                 => '',
        'formCotacao:IComplementoPop'            => '',
        'formCotacao:IBairroPop'                 => '',
        'formCotacao:ICidadePop'                 => '',
        'formCotacao:IComissao'                  => '',
        'formCotacao:IFormaPagamento'            => '-1',
        'formCotacao:IPeriodoIndenitario'        => '-1',
        'javax.faces.ViewState'				 	 => '',
        'formCotacao:ISucursalCombo'             => '',
        'ajaxSingle'                             => ''
    }
end


request(:sucursal, 'https://wwws.bradescoseguros.com.br/REBP-CotadorResidencial/pages/cotacao/inclusao/novo_calculo.jsf') do
    default_json.merge!({
        'javax.faces.ViewState'       => @login_params.viewstate,
        'formCotacao:cdUsuarioLogado' => '695', 
        'formCotacao:ICodCorretor'    => @login_params.broker,
        'formCotacao:INomeCorretor'   => @login_params.insurer_name,
        'formCotacao:ISucursalCombo'  => @login_params.sucursal,
        'ajaxSingle'                  => 'formCotacao:ISucursalCombo',
        'formCotacao:j_id312'         => 'formCotacao:j_id312'
    })
end

request(:cpd_code, 'https://wwws.bradescoseguros.com.br/REBP-CotadorResidencial/pages/cotacao/inclusao/novo_calculo.jsf') do
    default_json.delete('formCotacao:j_id312')
    default_json.merge!({
        'formCotacao:IGrupoAtividade'   => @quotation.residence.type_residence_code,
        'formCotacao:IAtividade'        => @quotation.residence.activity_group,
        'javax.faces.ViewState'       	=> @login_params.viewstate,
        'formCotacao:ICodCorretorCombo' => @login_params.broker,
        'ajaxSingle'                    => 'formCotacao:ICodCorretorCombo',
        'formCotacao:j_id318'           => 'formCotacao:j_id318'
    })
end