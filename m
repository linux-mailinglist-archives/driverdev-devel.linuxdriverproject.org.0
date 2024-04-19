Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4E18ABE6D
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Apr 2024 04:49:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A259400CE;
	Sun, 21 Apr 2024 02:49:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lEHtczOHJZM3; Sun, 21 Apr 2024 02:49:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 26D89400EA
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26D89400EA;
	Sun, 21 Apr 2024 02:49:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D2B001BF408;
 Sun, 21 Apr 2024 02:49:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF7FF605FD;
 Sun, 21 Apr 2024 02:49:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XzQ8Qw8GdU3c; Sun, 21 Apr 2024 02:49:41 +0000 (UTC)
X-Greylist: delayed 31505 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 21 Apr 2024 02:49:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 93610605FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 93610605FB
Received-SPF: Pass (sender SPF authorized) identity=helo;
 client-ip=190.64.16.34; helo=correos.anep.edu.uy; envelope-from=<>;
 receiver=<UNKNOWN> 
Received: from correos.anep.edu.uy (gw34.anep.edu.uy [190.64.16.34])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 93610605FB
 for <devel@driverdev.osuosl.org>; Sun, 21 Apr 2024 02:49:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by correos.anep.edu.uy (Postfix) with ESMTP id 9DC994242A4;
 Sat, 20 Apr 2024 13:02:44 -0300 (-03)
Received: from correos.anep.edu.uy ([127.0.0.1])
 by localhost (correos.anep.edu.uy [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id f__vql-Oqei7; Sat, 20 Apr 2024 13:02:44 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
 by correos.anep.edu.uy (Postfix) with ESMTP id BECA2408426;
 Sat, 20 Apr 2024 13:02:40 -0300 (-03)
DKIM-Filter: OpenDKIM Filter v2.10.3 correos.anep.edu.uy BECA2408426
X-Amavis-Modified: Mail body modified (using disclaimer) - correos.anep.edu.uy
X-Virus-Scanned: amavisd-new at anep.edu.uy
Received: from correos.anep.edu.uy ([127.0.0.1])
 by localhost (correos.anep.edu.uy [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id rCsMs4ynyxR1; Sat, 20 Apr 2024 13:02:40 -0300 (-03)
Received: from MacWindow.www.huaweimobilewifi.com (unknown [105.4.5.194])
 by correos.anep.edu.uy (Postfix) with ESMTPSA id D3B9A4243AA;
 Sat, 20 Apr 2024 13:02:26 -0300 (-03)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: =?utf-8?q?Wohlt=C3=A4tigkeitsfonds_von_2_Millionen_Eur?=
To: Recipients <>
From: "Edwin castro" <""@anep.edu.uy>
Date: Fri, 19 Apr 2024 23:57:44 +0200
X-Antivirus: Avast (VPS 240420-6, 4/20/2024), Outbound message
X-Antivirus-Status: Clean
Message-Id: <20240420160226.D3B9A4243AA@correos.anep.edu.uy>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anep.edu.uy; 
 s=2186B940-9DA3-11E9-BC9D-8E038F5E4344; t=1713628960;
 bh=ZbfCBImFlDYEGOc/4FD63wIARN7c0nvTRED+JmF4Ib4=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=RG7KltKv428xeHzArIk7oLcwA+N7oWyNwkVCv5DKTJrDNkPvEs3NIuRSj9JKMEfVb
 M8BxzubvCiNqDRAY/af/fCBp8XvH3E37jMvI+5Tn3FeFVTrZoDDYPcIjdj4Dhx3yp6
 WYSa9ZOari0ouyoziROE3P29jbH+MEEcSf2XjU+pPZK82qkYr0J2OXIjMrMZfBv37q
 CpDIV+JJ9ALWoMEp+SUg8FYT4p1FuU3k+8Kripn4LItRD7CunC4qlOtlW/vVpRqQGI
 LbOId+5/SvNdidHk/f6GMgN0Onv5I+1zs1Irx8bKemCYcepmBN15voi0qAllv9FYMF
 5JaWBT/TQYQeA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=fail (p=quarantine dis=none)
 header.from=anep.edu.uy
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key,
 unprotected) header.d=anep.edu.uy header.i=@anep.edu.uy header.a=rsa-sha256
 header.s=2186B940-9DA3-11E9-BC9D-8E038F5E4344 header.b=RG7KltKv
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
Reply-To: edwincastrodonation@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hallo, mein Name ist Edwin Castro und ich habe eine Jackpot-Lotterie in H=
=F6he von 2 Milliarden Dollar gewonnen. Ich und meine Familie haben beschlo=
ssen, die Summe von 2 Millionen Euro an f=FCnf gl=FCckliche Personen zu spe=
nden, und Sie wurden als einer der Beg=FCnstigten ausgew=E4hlt mich unter d=
ieser E-Mail edwincastrodonation@gmail.com

-- =

This email has been checked for viruses by Avast antivirus software.
www.avast.com
PRIVACIDAD DE ESTE MENSAJE - Este mensaje esta dirigido exclusivamente a la=
s personas que tienen las direcciones de correo electronico especificadas e=
n los destinatarios dentro de su encabezado. Si por error usted ha recibido=
 este mensaje, por ningun motivo debe revelar su contenido, copiarlo, distr=
ibuirlo o utilizarlo. Le solicitamos por favor comunique el error a la dire=
ccion de correo electronico remitente y elimine dicho mensaje junto con cua=
lquier documento adjunto que pudiera contener. Los derechos de privacidad y=
 confidencialidad de la informacion en este mensaje no deben perderse por e=
l hecho de haberse trasmitido erroneamente o por causas de interferencias e=
n el funcionamiento de los sistemas de correo y canales de comunicacion. Lo=
s datos contenidos en este mensaje estan protegidos por la Ley 18.331 Ley d=
e Proteccion de Datos Personales y Accion de Habeas Data. Toda opinion que =
se expresa en este mensaje pertenece a la persona remitente por lo que no d=
ebe entenderse necesari
 amente como una opinion de ANEP y/o de las entidades que la integran, a me=
nos que el remitente este autorizado para hacerlo o expresamente lo diga en=
 el mismo mensaje. En consideracion a que los mensajes enviados de manera e=
lectronica pueden ser interceptados y manipulados, ANEP y las entidades que=
 la integran no se hacen responsables si los mensajes llegan con demora res=
pecto de la fecha de su envio por el remitente, incompletos, eliminados o c=
on algun programa malicioso denominado como virus informatico.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
