Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C60E7EA41C
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Nov 2023 20:59:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8958741BD1;
	Mon, 13 Nov 2023 19:59:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8958741BD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M_dt8teVJfXE; Mon, 13 Nov 2023 19:59:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C13C417D4;
	Mon, 13 Nov 2023 19:59:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C13C417D4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D57E71BF228
 for <devel@linuxdriverproject.org>; Mon, 13 Nov 2023 19:59:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7360F60EEE
 for <devel@linuxdriverproject.org>; Mon, 13 Nov 2023 19:59:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7360F60EEE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7HnOGeHO7J3C for <devel@linuxdriverproject.org>;
 Mon, 13 Nov 2023 19:59:02 +0000 (UTC)
X-Greylist: delayed 2437 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 13 Nov 2023 19:59:02 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2EC2360E83
Received: from smtp.headwork.ru (unknown [195.133.253.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2EC2360E83
 for <devel@driverdev.osuosl.org>; Mon, 13 Nov 2023 19:59:02 +0000 (UTC)
Received: from smtp.headwork.ru (unknown [45.133.193.38])
 by smtp.headwork.ru (smtp.headwork.ru) with ESMTPA id 057B53118AFE1;
 Mon, 13 Nov 2023 13:06:40 +0300 (MSK)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Kontaktm
To: Recipients <testtest@headwork.ru>
From: Mikhail Fridman<testtest@headwork.ru>
Date: Mon, 13 Nov 2023 11:06:34 +0100
Message-Id: <20231113100642.057B53118AFE1@smtp.headwork.ru>
X-Spam: Yes
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=headwork.ru; s=mail; 
 t=1699870007; h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type: content-transfer-encoding:content-transfer-encoding;
 bh=BHtnZfQWCel8nOiBLwhFr1wW9jSRU4sMHWTaEtaIq8E=;
 b=AeORK1n+SflJd+iWYbGe32J9FnZhk941VArBA16KsVuEe8FnQrzT61Yjan2xnd5RXdeuxz
 a3wbNFma3hpxLTUZdqXQ7AHSgwO7WAHYAO0N9F6B9nuJ/b1Owuu15KLKwiv2Q+d5gclvpU
 BaHdmN9wF0B6MOVTt2Eaik0+yzQZCYsmz6FLq/Pgr/FtAdAc/oKyRiHbyABFcRw1lAEPIC
 6u0/iR4goAR2WASvCJnE6j2LNaP1jj/ovhdQDf5mbpLgCIvbcDM1hKflMl307fvP/c33Jm
 12N56R3+5TlUKPHfTIy53esCSQnE+NsKW4Bne2Cfjlst6AsWWWbudNvT0T3yiw==
X-Mailman-Original-Authentication-Results: smtp.headwork.ru;
 auth=pass smtp.auth=testtest@headwork.ru smtp.mailfrom=testtest@headwork.ru
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
Reply-To: alfagroupfridman@hotmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hallo, ich, Mikhail Fridman, werde Ihnen im Namen einer Wohlt=E4tigkeitsorg=
anisation 2.500.000 Euro aus einem Teil meiner Investition spenden. Bitte a=
ntworten Sie mit Ihren Anspruchsdetails. Ich erwarte Ihre fr=FCheste Antwor=
t und

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
