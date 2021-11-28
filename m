Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 265004612BB
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Nov 2021 11:42:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25032405B2;
	Mon, 29 Nov 2021 10:42:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GR2XtvVtQsjl; Mon, 29 Nov 2021 10:42:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 939BF4053B;
	Mon, 29 Nov 2021 10:42:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EAD131BF3DD
 for <devel@linuxdriverproject.org>; Mon, 29 Nov 2021 10:42:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E6C3460A43
 for <devel@linuxdriverproject.org>; Mon, 29 Nov 2021 10:42:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=vallenar.cl
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fIJjx4OQNtqV for <devel@linuxdriverproject.org>;
 Mon, 29 Nov 2021 10:42:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.vallenar.cl (mail.vallenar.cl [200.54.241.89])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 17130605D6
 for <devel@driverdev.osuosl.org>; Mon, 29 Nov 2021 10:42:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.vallenar.cl (Postfix) with ESMTP id AC47A1CCC76A;
 Sun, 28 Nov 2021 13:09:51 -0300 (-03)
Received: from mail.vallenar.cl ([127.0.0.1])
 by localhost (mail.vallenar.cl [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ycdzXdB3alBj; Sun, 28 Nov 2021 13:09:51 -0300 (-03)
Received: from localhost (localhost [127.0.0.1])
 by mail.vallenar.cl (Postfix) with ESMTP id 848711CEB57E;
 Sun, 28 Nov 2021 11:45:09 -0300 (-03)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.vallenar.cl 848711CEB57E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vallenar.cl;
 s=EC098874-C7DE-11E7-B3B1-1A9A6030413E; t=1638110709;
 bh=IQxUcKgLaEia+DMrVj9OEHbWOH8TffrzQMeZgAxYubI=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=eWjyMAEFoNmZLMXUnGl4Ton2OLzhxJLbG2+QEgiIlcsCo5XqkTjIlE1AJjiiONKl9
 rQRGSo3RccQzr9svXvV5KOQHPe6XXSCUv9wKA1wXWYz9/SD1VhGs7No2KIIYbJS0wp
 hRa7F0skdBiZV4dZxieFdhs8LtG5Ns+Y27pOQ7LKc3Nu0LpAltGcoMjMK3ZYgmHq9d
 hgoFiXqoiGqj6XiI9ajYXe03WdTbRGVls9YfeHLGge7Gv2+Ub0w+WChvUcs4XDsQrv
 pZrJizLiflsLD/3NNSfG/gVIqFCdin9WNYuq0BloBT1izzRJn6fie9pp0oJRuGeKQb
 fHvYWzbu2AneQ==
X-Virus-Scanned: amavisd-new at vallenar.cl
Received: from mail.vallenar.cl ([127.0.0.1])
 by localhost (mail.vallenar.cl [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id nIxaTVtLaUht; Sun, 28 Nov 2021 11:45:09 -0300 (-03)
Received: from [192.168.8.101] (unknown [105.0.3.102])
 by mail.vallenar.cl (Postfix) with ESMTPSA id 839751CA9DD1;
 Sun, 28 Nov 2021 11:14:35 -0300 (-03)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: 2.000.000,00. Euro
To: Recipients <yperez@vallenar.cl>
From: "manuel franco" <yperez@vallenar.cl>
Date: Sun, 28 Nov 2021 16:22:07 +0200
Message-Id: <20211128141436.839751CA9DD1@mail.vallenar.cl>
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
Reply-To: manuelfrancospende00@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sie haben eine Spende von 2.000.000,00. Euro

Mein Name ist Manuel Franco aus den Vereinigten Staaten.
Ich habe die Amerika-Lotterie im Wert von 768 Millionen US-Dollar gewonnen =
und spende einen Teil davon an nur 5 gl=FCckliche Menschen und ein paar Wai=
senh=E4user als Wohlwollen f=FCr die Menschheit.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
