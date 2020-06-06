Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 752F01F0813
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Jun 2020 20:06:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B15286932;
	Sat,  6 Jun 2020 18:06:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yDz6SHa8-NSR; Sat,  6 Jun 2020 18:06:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 20B64861F9;
	Sat,  6 Jun 2020 18:06:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 352ED1BF31E
 for <devel@linuxdriverproject.org>; Sat,  6 Jun 2020 18:06:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2C92A81E46
 for <devel@linuxdriverproject.org>; Sat,  6 Jun 2020 18:06:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sDW1LmKvmCoZ for <devel@linuxdriverproject.org>;
 Sat,  6 Jun 2020 18:06:48 +0000 (UTC)
X-Greylist: delayed 00:08:40 by SQLgrey-1.7.6
Received: from webmail.filo.uba.ar (webmail.filo.uba.ar [157.92.88.4])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3A6F581397
 for <devel@driverdev.osuosl.org>; Sat,  6 Jun 2020 18:06:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by webmail.filo.uba.ar (Postfix) with ESMTP id BF14B14B1F3
 for <devel@driverdev.osuosl.org>; Sat,  6 Jun 2020 14:58:04 -0300 (-03)
Authentication-Results: webmail.filo.uba.ar (amavisd-new);
 dkim=pass (1024-bit key) reason="pass (just generated, assumed good)"
 header.d=filo.uba.ar
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=filo.uba.ar; h=
 reply-to:date:date:from:from:to:subject:subject
 :content-description:content-transfer-encoding:mime-version
 :content-type:content-type; s=dkim; t=1591466282; x=1592330283;
 bh=Fa8/SZ8Qhxppc3XrXkL2zgCkRn5gXS5xBOyh1Ogsaos=; b=VrHtb5EKw8Jr
 2CwBcOgfMEIaGlSzMgdVkdlcMeNs4i5uat+C3Jd71Hbqe0tWka+bKzzz6j2NBAlt
 /ueXY4W3vHR7yds6Dx7YUNjwIGs/s9jpYHX1/rpDQQIYJzCf6VuIEKLUpfO2xLvf
 8Euixf67Sc4OxiwmhGBuGlwKvzNvQsY=
X-Virus-Scanned: Debian amavisd-new at webmail.filo.uba.ar
Received: from webmail.filo.uba.ar ([127.0.0.1])
 by localhost (webmail.filo.uba.ar [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PHEi3-UlEkxU for <devel@driverdev.osuosl.org>;
 Sat,  6 Jun 2020 14:58:02 -0300 (-03)
Received: from [192.168.8.104] (unknown [105.9.138.234])
 by webmail.filo.uba.ar (Postfix) with ESMTPA id D4CAC14C521
 for <devel@driverdev.osuosl.org>; Sat,  6 Jun 2020 13:44:25 -0300 (-03)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: ATTN
To: devel@driverdev.osuosl.org
From: Facebook Inc <direcciondeprofesores@filo.uba.ar>
Date: Sat, 06 Jun 2020 18:44:20 +0200
X-Antivirus: Avast (VPS 200605-4, 06/05/2020), Outbound message
X-Antivirus-Status: Clean
Message-Id: <20200606175804.BF14B14B1F3@webmail.filo.uba.ar>
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
Reply-To: fbdirecteedesk2020@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

FACEBOOK INC
1601 WILLOW ROAD MENLO PARK, CA 94025
www.facebook.com

Beste Facebook-gebruiker:

Dit is om u te informeren dat uw Facebook-account met e-mail: devel@driverd=
ev.osuosl.org een geldprijs heeft gewonnen van 2.800.000,00 EUR (twee miljo=
en achthonderdduizend euro) voor de Facebook-editie van de 2020-editie.

We feliciteren u dat u een van de geselecteerde mensen bent.

U wordt hierbij geadviseerd om de volgende informatie naar het management v=
an Facebook Inc te sturen om uw claim te verwerken.

 1. Volledige naam:
 2. Land:
 3. Contactadres:
 4. Telefoonnummer:
 5. Burgerlijke staat:
 6. Beroep:
 7. Bedrijf:
 8. Leeftijd:

 Gefeliciteerd!! Alweer.

Om veiligheidsredenen raden we alle winnaars aan om deze informatie vertrou=
welijk te houden voor het publiek totdat uw claim is verwerkt en uw prijs a=
an u vrijgegeven. Dit maakt deel uit van ons beveiligingsprotocol om dubbel=
e claims en ongerechtvaardigde misbruik van dit programma door te voorkomen=
 niet-deelnemer of niet-officieel personeel.

Stuur de vereiste informatie naar het offici=EBle e-mailadres voor claimver=
werking (fbdirecteedesk2020@gmail.com)

WE ZULLEN ALLES DIT SAMEN KRIJGEN.
BLIJF THUIS. BLIJF VEILIG. LAAT DEVELEN COVID 19.

kantoor van de president
CEO van Facebook
Mark Zuckerberg

-- =

This email has been checked for viruses by Avast antivirus software.
https://www.avast.com/antivirus

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
