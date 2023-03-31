import 'dart:ui';

class Link {
  final String img;
  final String titulo;
  final String subtitulo;
  final Color changeColor;
  final String link;
  final String arquivo;

  Link({
    required this.img,
    required this.titulo,
    required this.subtitulo,
    required this.changeColor,
    required this.link,
    required this.arquivo,
  });
}

List<Link> estagios = [
  Link(
      img: 'assets/start.gif',
      titulo: 'Início de estágio',
      subtitulo: 'Cadastro de empresas',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/cadastro-de-empresas-1.doc',
      arquivo: 'cadastro-de-empresas'),
  Link(
      img: 'assets/botao.gif',
      titulo: 'Início de estágio',
      subtitulo: 'Ficha de Matrícula',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/ficha-de-matricula.doc',
      arquivo: 'ficha-de-matricula'),
  Link(
      img: 'assets/botao03.gif',
      titulo: 'Início de estágio',
      subtitulo: 'Termo de compromisso\nde estágio e\nplano de atividades',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://www.ifce.edu.br/maracanau/menu/setor-de-estagios/termo-de-compromisso-de-estagio-e-plano-de-atividades-3-1.docx',
      arquivo: 'termo-de-compromisso-de-estagio'),
  Link(
      img: 'assets/botao04.gif',
      titulo: 'Fase intermediária',
      subtitulo: 'Relatório diário de estágio',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://www.ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/relatorio-diario-de-atividades-2.doc',
      arquivo: 'relatorio-diario'),
  Link(
      img: 'assets/botao05.gif',
      titulo: 'Fase intermediária',
      subtitulo: 'Termo de compromisso\nde estágio e plano\nde atividades',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://www.ifce.edu.br/maracanau/menu/setor-de-estagios/termo-de-compromisso-de-estagio-e-plano-de-atividades-3-1.docx',
      arquivo: 'termo-de-compromisso-de-estagio-sup'),
  Link(
      img: 'assets/ryu.gif',
      titulo: 'Fase intermediária',
      subtitulo: 'Relatório periódico de estágio',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://www.ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/relatorio-periodico-de-estagio.doc',
      arquivo: 'relatorio-periodico'),
  Link(
      img: 'assets/storm.gif',
      titulo: 'Fase intermediária',
      subtitulo: 'Termo aditivo de horas',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://www.ifce.edu.br/maracanau/menu/setor-de-estagios/subst-de-arquivos-30.05/termo-aditivo-de-alteracao-de-horario.odt',
      arquivo: 'termo-aditivo'),
  Link(
      img: 'assets/metroid.gif',
      titulo: 'Conclusão de estágio\ncursos técnicos',
      subtitulo: 'Ficha de avaliação\ndo estagiário',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://www.ifce.edu.br/maracanau/menu/setor-de-estagios/subst-de-arquivos-30.05/ficha-de-avaliacao-do-estagiario_04_06_19.odt',
      arquivo: 'ficha-de-avaliacao'),
  Link(
      img: 'assets/venom.gif',
      titulo: 'Conclusão de estágio\ncursos técnicos',
      subtitulo: 'Relatório Final de Estágio',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://www.ifce.edu.br/maracanau/menu/setor-de-estagios/subst-de-arquivos-30.05/relatorio-final-de-estagio-dos-cursos-tecnicos.odt',
      arquivo: 'relatorio-final'),
  Link(
      img: 'assets/darth.gif',
      titulo: 'Conclusão de estágio\ncursos técnicos',
      subtitulo: 'Requerimento de conclusão\nde  Estágio',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://www.ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/requerimento-de-conclusao-da-disciplina-de-estagio-obrigatorio.doc',
      arquivo: 'requerimento-de-conclusao'),
  Link(
      img: 'assets/ashoka.gif',
      titulo: 'Conclusão de estágio\ncursos técnicos',
      subtitulo: 'Declaração de conclusão\nde Estágio',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://www.ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/declaracao-de-conclusao-de-estagio-13.doc',
      arquivo: 'declaracao-de-conclusao'),
  Link(
      img: 'assets/tale2.gif',
      titulo: 'Conclusão de estágio\ncursos técnicos',
      subtitulo: 'Termo de rescisão de\ncontrato de Estágio',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://www.ifce.edu.br/maracanau/menu/setor-de-estagios/arquivo10_07/termo-de-rescisao-de-contrato-de-estagio.doc',
      arquivo: 'termo-de-rescisao'),
  Link(
      img: 'assets/jedi.gif',
      titulo: 'Conclusão de estágio\ncursos superiores',
      subtitulo: 'Ficha de avaliação\ndo estagiário',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://www.ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/ficha-de-avaliacao-do-estagiario.doc',
      arquivo: 'ficha-de-avaliacao'),
  Link(
      img: 'assets/morty.gif',
      titulo: 'Conclusão de estágio\ncursos superiores',
      subtitulo: 'Requerimento de Conclusão\ndo Estágio',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://www.ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/requerimento-de-conclusao-da-disciplina-de-estagio-obrigatorio.doc',
      arquivo: 'requerimento-de-conclusao'),
  Link(
      img: 'assets/spiderman.gif',
      titulo: 'Conclusão de estágio\ncursos superiores',
      subtitulo: 'Orientação para\nRelatório Final de Estágio',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://www.ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/orientacao-para-relatorio-para-relatorio-final-de-estagios-dos-cursos-superiores-13.doc',
      arquivo: 'orientacao-para-relatorio'),
  Link(
      img: 'assets/sonic2.gif',
      titulo: 'Conclusão de estágio\ncursos superiores',
      subtitulo: 'Declaração de conclusão\nde Estágio',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://www.ifce.edu.br/maracanau/menu/setor-de-estagios/subs-aquirvos-10_06/declaracao-de-conclusao-de-estagio-13.doc',
      arquivo: 'declaracao-de-conclusao'),
  Link(
      img: 'assets/goku.gif',
      titulo: 'Conclusão de estágio\ncursos superiores',
      subtitulo: 'Termo de compromisso\nde estágio e plano\nde atividades',
      changeColor: const Color.fromRGBO(0, 100, 0, 10),
      link:
          'https://www.ifce.edu.br/maracanau/menu/setor-de-estagios/arquivo10_07/termo-de-rescisao-de-contrato-de-estagio.doc',
      arquivo: 'termo-de-rescisao-de-contrato'),
];
