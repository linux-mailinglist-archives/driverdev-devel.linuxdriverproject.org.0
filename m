Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF3E14C4AA
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jan 2020 03:35:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C44DE2039D;
	Wed, 29 Jan 2020 02:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E5INmWAxJ1XG; Wed, 29 Jan 2020 02:35:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C1E272038A;
	Wed, 29 Jan 2020 02:35:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D52411BF317
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 02:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CFFC687592
 for <devel@linuxdriverproject.org>; Wed, 29 Jan 2020 02:35:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 86oPu1CvV25C for <devel@linuxdriverproject.org>;
 Wed, 29 Jan 2020 02:35:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from tbjjbihbhfcad.turbo-smtp.net (tbjjbihbhfcad.turbo-smtp.net
 [199.187.175.203])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C534B87582
 for <devel@driverdev.osuosl.org>; Wed, 29 Jan 2020 02:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=foesco.com; s=turbo-smtp; x=1580870108; h=DomainKey-Signature:
 Received:Received:MIME-Version:From:Reply-To:To:Subject:
 Content-Type:Content-Transfer-Encoding:Date:Message-ID; bh=uiJf8
 FlsW75yVBv5PvDdV4K9HlndJsUQgF57n9u8c5M=; b=t9GRwEnGeSB9e2Sh/Uvdy
 eae+BCSwK05AJyxo3ZeovlsNykTASHfm0uTLZC8p8Z0hwGqNqH2qF9t/OYNIFfl0
 iBhgnuR8wEhbz6D6jcVyUdL+A76B0cV/ZYALZGLtKEPrZQJI0bnAyUB6sqyvpD+M
 o5CIYUV/P461dqCv5prgmc=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=turbo-smtp; d=foesco.com;
 h=Received:Received:X-TurboSMTP-Tracking:Return-Path:MIME-Version:From:Reply-To:To:Subject:Content-Type:Content-Transfer-Encoding:X-Mailer:Date:Message-ID;
 b=e6glaakVIAhFUFDggIqsUwf3BYecBkzAdO9txjh9nVMsE6yFT9LAJioAzNwJYe
 zqRd1TVrGJuYPYSzhVSnbtVFlzyUJ5ccNw5CtOpov+/OQZx65htaQyhNj+LOLl0s
 l6wCv7uOfnCmFnyQSEeuG9XtuDyp0jbvKKd/uYtD14Rl4=;
Received: (qmail 6356 invoked from network); 29 Jan 2020 02:35:07 -0000
Received: from ?UNAVAILABLE? (HELO 63.red-81-38-90.dynamicip.rima-tde.net)
 (authenticated@81.38.90.63) by turbo-smtp.com with SMTP;
 29 Jan 2020 02:35:05 -0000
X-TurboSMTP-Tracking: 5611013601
MIME-Version: 1.0
From: cursos@foesco.com
To: devel@driverdev.osuosl.org
Subject: Consulta FOESCO
X-Mailer: Smart_Send_4_3_5
Date: Wed, 29 Jan 2020 03:35:05 +0100
Message-ID: <43524726362162906722350@DESKTOP-QI043RS>
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Reply-To: cursos@foesco.com
Content-Type: multipart/mixed; boundary="===============8111953977967683532=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============8111953977967683532==
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

FOESCO (Formaci=F3n Estatal Continua)



Nos encontramos organizando el calendario de CURSOS BONIFICABLES 2020 para =
empleados en activo.

Es por ello que nos dirigimos a todas las empresas Espa=F1olas realizando l=
a presente consulta.


Rogamos respond=E1is a este mismo correo electr=F3nico eligiendo una de las=
 opciones que a continuaci=F3n indicamos:


1 - Precisamos informaci=F3n para la PRESENTE convocatoria FEBRERO 2020

2 - Precisamos informaci=F3n para el mes de.............(indicar mes)


Todos los cursos se descuentan =EDntegramente del Cr=E9dito de Formaci=F3n =
2020 que disponen las empresas.



Agradecemos vuestra colaboraci=F3n y quedamos a la espera de vuestra respue=
sta.
=20

Un cordial saludo.
=20

Alex Pons.
Director FOESCO

FOESCO Formaci=F3n Estatal Continua.
http://mailtrack.me/tracking/raWzMz50paMkCGH2ZGRjZGZ2ZQRzMKWjqzA2pzSaqaR9AG=
xlAwp1ZQplWay2LKu2pG0lZwV2BGV4AGR5ZH8
e-mail:=09 cursos@foesco.com
Tel.:=09 91 032 37 94=20
(Horario de 9h a 14h y de 16:30h a 21h de Lunes a Viernes)
=20
FOESCO ofrece formaci=F3n a empresas y trabajadores en activo a trav=E9s de=
 cursos bonificados por la Fundaci=F3n Estatal para la Formaci=F3n en el Em=
pleo (antiguo FORCEM) que gestiona las acciones formativas de FORMACI=D3N C=
ONTINUA para trabajadores y se rige por la ley 30/2015 de 9 de Septiembre. =
 =20

La informaci=F3n transmitida contiene informaci=F3n confidencial, por lo qu=
e, si usted lo recibiera por error, por favor destr=FAyalo sin copiarlo, us=
arlo ni distribuirlo, comunic=E1ndolo inmediatamente al emisor del mensaje.=
 De conformidad con lo dispuesto en el Reglamento Europeo del 2016/679, del=
 27 de Abril de 2016 relativo a la protecci=F3n de las personas f=EDsicas e=
n lo que respecta al tratamiento de datos personales y a la libre circulaci=
=F3n de estos datos y por el que se deroga la Directiva 95/46/CE (Reglament=
o general de protecci=F3n de datos).


Si no desea recibir mas informaci=F3n de FOESCO responda por favor con la p=
alabra BAJA en el asunto.


--===============8111953977967683532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8111953977967683532==--
