Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF8C6C96C0
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Mar 2023 18:19:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0264C414A2;
	Sun, 26 Mar 2023 16:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0264C414A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q5-B9Y1MhXJl; Sun, 26 Mar 2023 16:19:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98BB6414CE;
	Sun, 26 Mar 2023 16:19:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 98BB6414CE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EF491BF3D6
 for <devel@linuxdriverproject.org>; Sun, 26 Mar 2023 16:19:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6E02C414A2
 for <devel@linuxdriverproject.org>; Sun, 26 Mar 2023 16:19:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6E02C414A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PEF6dkCKYREG for <devel@linuxdriverproject.org>;
 Sun, 26 Mar 2023 16:19:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A1054149D
Received: from send.alexandria.cz (send.alexandria.cz [81.0.208.203])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4A1054149D
 for <devel@driverdev.osuosl.org>; Sun, 26 Mar 2023 16:19:40 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by send.alexandria.cz (Postfix) with ESMTP id 1CF9DA8CA1;
 Sun, 26 Mar 2023 09:59:18 +0200 (CEST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: stepan.mihule@alexandria.cz)
 by posta.alexandria.cz (Postfix) with ESMTPSA id 03D30400DF;
 Sun, 26 Mar 2023 09:59:13 +0200 (CEST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Hallo zonneschijn, hoe gaat het?
To: Recipients <mk@alexandria.cz>
From: "Secret Admirer"<mk@alexandria.cz>
Date: Sun, 26 Mar 2023 09:59:04 +0200
X-Antivirus: Avast (VPS 230326-0, 3/26/2023), Outbound message
X-Antivirus-Status: Clean
Message-Id: <20230326161943.6E02C414A2@smtp4.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/simple;
 d=alexandria.cz; s=dm; 
 t=1679817558; bh=oqVcbUjdxE0GwXvKVAPehriH3ms=;
 h=Subject:To:From:Date:Reply-To:From;
 b=l5HErKCVyOoYCDgoIzA9AdacSxCY1WmwXnX8cEAnt1RUGqgt71VlySJQ37NtAj3JU
 QnCXpnCW4xa7l1fpwec2vKr0Cm1al0sRgP7ddmXTlVEbFzH/u311pf10ZaLWHEV6Sf
 KYuekgruukeBolTR+DiZxl8k7V1yln8Pn2Hcj3PE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=alexandria.cz header.i=@alexandria.cz
 header.a=rsa-sha1 header.s=dm header.b=l5HErKCV
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
Reply-To: mabakker562@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Het spijt me u te storen en uw privacy te schenden. Ik ben vrijgezel,
  eenzaam en heeft behoefte aan een zorgzame, liefdevolle en romantische me=
tgezel.

Ik ben een geheime bewonderaar en zou graag de mogelijkheid willen verkennen
leer meer over elkaar. Ik weet dat het vreemd is om contact met je op te ne=
men
op deze manier en ik hoop dat je me kunt vergeven. Ik ben een verlegen pers=
oon en
dit is de enige manier waarop ik weet dat ik je aandacht kan trekken. Ik wi=
l gewoon
om te weten wat je denkt en het is niet mijn bedoeling om je te beledigen.
Ik hoop dat we vrienden kunnen zijn als je dat wilt, hoewel ik dat zou will=
en
om meer te zijn dan alleen een vriend. Ik weet dat je een paar vragen hebt
vraag het en ik hoop dat ik met een paar iets van je nieuwsgierigheid kan b=
evredigen
antwoorden.

Ik geloof in het gezegde dat 'voor de wereld ben je maar =E9=E9n persoon,
maar voor een speciaal iemand ben jij de wereld'. Alles wat ik wil is liefd=
e,
romantische zorg en aandacht van een speciale metgezel die ik ben
in de hoop dat jij dat zou zijn.

Ik hoop dat dit bericht het begin is van een lange termijn
communicatie tussen ons, stuur gewoon een antwoord op dit bericht, it
zal me gelukkig maken.


Knuffels en kussen,

Geheime aanbidder.

-- =

This email has been checked for viruses by Avast antivirus software.
www.avast.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
