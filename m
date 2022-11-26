Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CB363951A
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Nov 2022 11:03:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FFB340076;
	Sat, 26 Nov 2022 10:03:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FFB340076
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l1XQ7pLsnuXn; Sat, 26 Nov 2022 10:03:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1679040074;
	Sat, 26 Nov 2022 10:03:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1679040074
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE89E1BF3A8
 for <devel@linuxdriverproject.org>; Sat, 26 Nov 2022 10:03:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E21A4053C
 for <devel@linuxdriverproject.org>; Sat, 26 Nov 2022 10:03:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E21A4053C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZSwbbpSpa22J for <devel@linuxdriverproject.org>;
 Sat, 26 Nov 2022 10:03:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BADA4026A
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com
 [IPv6:2607:f8b0:4864:20::e35])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1BADA4026A
 for <devel@linuxdriverproject.org>; Sat, 26 Nov 2022 10:03:08 +0000 (UTC)
Received: by mail-vs1-xe35.google.com with SMTP id v128so6231787vsb.13
 for <devel@linuxdriverproject.org>; Sat, 26 Nov 2022 02:03:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=EkLKKfAR5wqmVPeCqMY1O7lAxo0pbmpK+QeQEKfcsQQ=;
 b=3MAfXeBnYBnxmE+eVrQkLILA+HFhc5wPWE6eKEUTYj1vNN4KVdX87fHk/EOmaT82Vd
 O3Ua6BAYk4X2NMFNXq9iRnfhfYBrWTAeAtFHTYoMmUmqBQC2Du038QvFLU5FIb9TQ9rA
 RmANNkMx4g3L3sRb/OFFW5axUVSt0OYY0vz+FgQdbqOkijwQf+U0Ci8LUlRypgpx2ZS7
 cJJUKbxCDvfr75U8sehM4A5UL63XBgIYHyimh1HC83IpE4I1n3B/sybGzs5CAE3AqoT1
 r9fiEDH8gRThmeRlFq4LbUnTvkbYmMBM8A4IPsLuAdMxHJdPHmCyrpZBFmYvmRpx7G8y
 /WIQ==
X-Gm-Message-State: ANoB5pmRpxe/eO/kQAiFDbgjM4XjwLypqckHCKayWaQI4KRK+4rDhf+y
 9LDLXU+F0LNl48wcY1Kmf1N+kM2K1p998rcQeqs=
X-Google-Smtp-Source: AA0mqf6Pq7E1EJQlokiRb7CQQm33lSOeazkV8QMFHxNnCjah3Ng64O5NdXJEBHz606g89Ni9xKt+nhxDLBYaxbiPyp0=
X-Received: by 2002:a05:6102:3bcf:b0:3aa:236e:345d with SMTP id
 a15-20020a0561023bcf00b003aa236e345dmr23177938vsv.45.1669456986678; Sat, 26
 Nov 2022 02:03:06 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a59:ccf1:0:b0:32b:6ae5:1eba with HTTP; Sat, 26 Nov 2022
 02:03:05 -0800 (PST)
From: nina coulibaly <ninacoulibaly13.info@gmail.com>
Date: Sat, 26 Nov 2022 10:03:05 +0000
Message-ID: <CACTFrC1BBkjE2J2kVL+gO2ru=gMWtx-xc6fC2iErRh1rCTqYbg@mail.gmail.com>
Subject: from nina coulibaly
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=to:subject:message-id:date:from:reply-to:mime-version:from:to:cc
 :subject:date:message-id:reply-to;
 bh=EkLKKfAR5wqmVPeCqMY1O7lAxo0pbmpK+QeQEKfcsQQ=;
 b=c3sriEBcIH1/Sx0JQXq+OyARxdRKTGBBNNczNzD5u+A772RzQG7kWZNpL3/qI+SKnT
 vMK079LpGkhrZy2Mc5MrgH8URo+blDGssqgErXbLJOrkcLcDU6TVR9kPUoMIN10V+EvT
 OloxO3OEV6GDoU+vLKjVrhm/kpFRhFRRFkyOpRhaMmkcf+u9+E12+XfsCcZFZlNhQxAm
 FxQwRbcYjzdp8IhGQpFzcENyg6tRQs9dHr/VwYzBiVaPaNubgw3B8os6uEJGCOgWaWut
 b7Acfdrjf/io7nZT7q1AnpUoZID9BLN0PwIB7EeFZ76vRxfwZO6bP7pZ+aCTkPILfH+E
 Z1oA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=c3sriEBc
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
Reply-To: ninacoulibaly03@myself.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

-- 
Dear sir,

Please grant me permission to share a very crucial discussion with
you. I am looking forward to hearing from you at your earliest
convenience.

Mrs. Nina Coulibaly
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
