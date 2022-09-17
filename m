Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4865BE939
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Sep 2022 16:43:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55CA860F74;
	Tue, 20 Sep 2022 14:43:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55CA860F74
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WttAbKjAc_R8; Tue, 20 Sep 2022 14:43:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0285D60F68;
	Tue, 20 Sep 2022 14:43:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0285D60F68
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4413B1BF3A9
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 20 Sep 2022 14:43:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1FB7B812EC
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 20 Sep 2022 14:43:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FB7B812EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id afHl4xg9dSrF
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 20 Sep 2022 14:43:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75873812B7
Received: from correo.tlalpan.cdmx.gob.mx (correo.tlalpan.cdmx.gob.mx
 [189.202.180.34])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 75873812B7
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 20 Sep 2022 14:43:40 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by correo.tlalpan.cdmx.gob.mx (Postfix) with ESMTP id 75DF81A1DBAF;
 Mon, 19 Sep 2022 00:12:59 -0500 (CDT)
Received: from correo.tlalpan.cdmx.gob.mx ([127.0.0.1])
 by localhost (correo.tlalpan.cdmx.gob.mx [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id a-dX1FwJhfrL; Mon, 19 Sep 2022 00:12:59 -0500 (CDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by correo.tlalpan.cdmx.gob.mx (Postfix) with ESMTP id 79231FB1796;
 Sun, 18 Sep 2022 07:15:33 -0500 (CDT)
X-Virus-Scanned: amavisd-new at tlalpan.cdmx.gob.mx
Received: from correo.tlalpan.cdmx.gob.mx ([127.0.0.1])
 by localhost (correo.tlalpan.cdmx.gob.mx [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Txf490gw--7O; Sun, 18 Sep 2022 07:15:33 -0500 (CDT)
Received: from [192.168.0.119] (unknown [93.182.106.53])
 by correo.tlalpan.cdmx.gob.mx (Postfix) with ESMTPSA id 9AD9111FAD5D;
 Sat, 17 Sep 2022 18:58:36 -0500 (CDT)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: RE
To: Recipients <drfyp@tlalpan.cdmx.gob.mx>
From: drfyp@tlalpan.cdmx.gob.mx
Date: Sun, 18 Sep 2022 02:58:57 +0300
X-Antivirus: Avast (VPS 220917-8, 9/17/2022), Outbound message
X-Antivirus-Status: Clean
Message-Id: <20220917235836.9AD9111FAD5D@correo.tlalpan.cdmx.gob.mx>
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
Reply-To: fp462558@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

$3.5 Million Has Been Donated To You,By Fran=E7ois Pinault due to the covid=
-19 pandemic this is Real Get back For More Info

WhatsApp: +447441443051

-- =

This email has been checked for viruses by Avast antivirus software.
www.avast.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
