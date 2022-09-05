Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 915665E8324
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Sep 2022 22:14:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AF1260E4D;
	Fri, 23 Sep 2022 20:14:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AF1260E4D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JkufeAfdQY9q; Fri, 23 Sep 2022 20:14:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38CDF60E8E;
	Fri, 23 Sep 2022 20:14:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38CDF60E8E
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F1401BF8A8
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 23 Sep 2022 20:14:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5A2B54010D
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 23 Sep 2022 20:14:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A2B54010D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4yGBx6izagKf
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 23 Sep 2022 20:14:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CED0400C4
Received: from mail.gtel.vn (unknown [183.91.160.6])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CED0400C4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 23 Sep 2022 20:14:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.gtel.vn (Postfix) with ESMTP id 9EBE44E9687CA;
 Fri, 16 Sep 2022 13:21:01 +0700 (+07)
Received: from mail.gtel.vn ([127.0.0.1])
 by localhost (mail.gtel.vn [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id LDJGnKmLqDzP; Fri, 16 Sep 2022 13:21:01 +0700 (+07)
Received: from localhost (localhost [127.0.0.1])
 by mail.gtel.vn (Postfix) with ESMTP id 47A184BD18C06;
 Sun, 11 Sep 2022 10:17:35 +0700 (+07)
X-Virus-Scanned: amavisd-new at mail.gtel.vn
Received: from mail.gtel.vn ([127.0.0.1])
 by localhost (mail.gtel.vn [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id oyI9CcGOOTBc; Sun, 11 Sep 2022 10:17:35 +0700 (+07)
Received: from DESKTOP-E6QQUAG.lan (unknown [93.182.110.212])
 by mail.gtel.vn (Postfix) with ESMTPSA id 559BA4CCDA92E;
 Mon,  5 Sep 2022 19:17:31 +0700 (+07)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: RE:
To: Recipients <admin@gtel.vn>
From: =?utf-8?b?IkZyYW7Dp29pcyBQaW5hdWx0IjxhZG1pbkBndGVsLnZuPg==?=@mail.gtel.vn
Date: Mon, 05 Sep 2022 15:17:22 +0300
X-Antivirus: Avast (VPS 220904-4, 9/4/2022), Outbound message
X-Antivirus-Status: Clean
Message-Id: <20220905121732.559BA4CCDA92E@mail.gtel.vn>
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
