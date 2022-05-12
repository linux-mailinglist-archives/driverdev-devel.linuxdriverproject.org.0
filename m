Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E254D5244B7
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 May 2022 07:13:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5AD0940B9F;
	Thu, 12 May 2022 05:13:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ohv6eV5kqGnj; Thu, 12 May 2022 05:13:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AC68400B8;
	Thu, 12 May 2022 05:13:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C031D1BF86D
 for <devel@linuxdriverproject.org>; Thu, 12 May 2022 05:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC70A60ADC
 for <devel@linuxdriverproject.org>; Thu, 12 May 2022 05:12:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=pekanbaru.go.id
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sQQCoFmRRz9j for <devel@linuxdriverproject.org>;
 Thu, 12 May 2022 05:12:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.pekanbaru.go.id (mail.pekanbaru.go.id [103.131.245.194])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 321AE607C7
 for <devel@driverdev.osuosl.org>; Thu, 12 May 2022 05:12:58 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.pekanbaru.go.id (Postfix) with ESMTP id 8F73892E0DD;
 Thu, 12 May 2022 10:45:52 +0700 (WIB)
Received: from mail.pekanbaru.go.id ([127.0.0.1])
 by localhost (mail.pekanbaru.go.id [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id AzcziW7HSaG2; Thu, 12 May 2022 10:45:52 +0700 (WIB)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.pekanbaru.go.id (Postfix) with ESMTP id 067E296C991;
 Thu, 12 May 2022 10:45:51 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.pekanbaru.go.id 067E296C991
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pekanbaru.go.id;
 s=EA5C5C9E-4206-11EC-835B-1ADACEA726A0; t=1652327151;
 bh=WgQd2bW8hb2KeIDNbeIeW1Bb4lp6m29iibMhAQT/egc=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=lAu0mKpSLQX7Egl+sDQjiLRisbW9RBVaf8GVKhQ74nlKhlHveWug6ABTDSrK5B8Gc
 ibVv/xG/k8P3IZlykvAFP0QzjrsP2IL7aZbwXukj3pANUIoTBcnT8OcnPWqQvzd6Xm
 z08E4dPt4TVqznu2ERAmPuI7YI/oMMp6P95cgSJAUkoFc7NVrG8P3gpqdPT4oUp0OS
 mqVAaN4LhMRa2hJempYqnh/PJW/n0CZomcsf0sNFt07UYjCyEBXVWEqHiQQUjHAjTj
 Ri5S/BLbRl5CAJ1+KfgA9BpDkeIHU61W33U+FnzVgQRp3kE5sA3Hl00b6g1JMq8Gxv
 idXMQ7OcG9Adg==
X-Virus-Scanned: amavisd-new at mail.pekanbaru.go.id
Received: from mail.pekanbaru.go.id ([127.0.0.1])
 by localhost (mail.pekanbaru.go.id [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id FvhhXI7UyUEA; Thu, 12 May 2022 10:45:50 +0700 (WIB)
Received: from [192.168.15.101] (unknown [41.79.219.176])
 by mail.pekanbaru.go.id (Postfix) with ESMTPSA id B167E98AE0D;
 Thu, 12 May 2022 10:45:41 +0700 (WIB)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Awaiting your response 
To: Recipients <waterproject@pekanbaru.go.id>
From: waterproject@pekanbaru.go.id
Date: Thu, 12 May 2022 04:45:33 +0100
Message-Id: <20220512034541.B167E98AE0D@mail.pekanbaru.go.id>
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
Reply-To: test@hostnextdoor.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi 

Did you get my previous email? I have attempted over 3 times to open up communication with you. Please acknowledge if you receive this email. 

Regards
Morten Friis
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
