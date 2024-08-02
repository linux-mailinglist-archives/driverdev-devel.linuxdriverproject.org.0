Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A4C945916
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2024 09:42:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D25D084500;
	Fri,  2 Aug 2024 07:42:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UK9GTSJXvoP2; Fri,  2 Aug 2024 07:42:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A48484505
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A48484505;
	Fri,  2 Aug 2024 07:42:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 00E561BF476
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2024 07:42:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EFFE16073C
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2024 07:42:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GoakwOznhZJP for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2024 07:42:05 +0000 (UTC)
X-Greylist: delayed 375 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 02 Aug 2024 07:42:04 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5824F6073F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5824F6073F
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=89.40.118.23;
 helo=mail.vectorspeedbiz.com; envelope-from=julien.keller@vectorspeedbiz.com;
 receiver=<UNKNOWN> 
Received: from mail.vectorspeedbiz.com (mail.vectorspeedbiz.com [89.40.118.23])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5824F6073F
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2024 07:42:04 +0000 (UTC)
Received: by mail.vectorspeedbiz.com (Postfix, from userid 1002)
 id C044584756; Fri,  2 Aug 2024 09:35:36 +0200 (CEST)
Received: by mail.vectorspeedbiz.com for <devel@driverdev.osuosl.org>;
 Fri,  2 Aug 2024 07:35:32 GMT
Message-ID: <20240802084500-0.1.4o.3ag5.0.07919xq8fd@vectorspeedbiz.com>
Date: Fri,  2 Aug 2024 07:35:32 GMT
From: "Julien Keller" <julien.keller@vectorspeedbiz.com>
To: <devel@driverdev.osuosl.org>
Subject: Mobile Phone Wholesale
X-Mailer: mail.vectorspeedbiz.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=vectorspeedbiz.com; s=mail; t=1722584140;
 bh=xrNEpnWQZ8snhxPgU3EBuIKpICs42jmB6iTHM0+PLvw=;
 h=Date:From:To:Subject:From;
 b=YFFVr9QpNYM+DetJ5UYhsY2gapy+nshCAwM9iQGQR3k6pfOwmFQNBaiXcAa5m9RGi
 G60zuqqvbCfPuKBKhR1bCwK6y0KPcvBYJTSulxQ9bV/+IUl1e0US32zdC7Z1WHiJg2
 PnfVwgbx5X+qzeU591iALO49uevZgzMoNq/+j/G0UBtKg/FJ1iAebtpR2emxm/jaiw
 o2WH/LFrjcyPnGHH72aiM9rnoBiV47yFZaHbxENgmH3xCPW+2hmKptFl3SGP0GJz3p
 Z1faHVKNMkIJrPcrivKcYOGSmduzj3lJvkCFOcXSCr2bjc5QAriah7Epjhi3h8bWZE
 tUCmCfSLoNzaA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=vectorspeedbiz.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=vectorspeedbiz.com header.i=@vectorspeedbiz.com
 header.a=rsa-sha256 header.s=mail header.b=YFFVr9Qp
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good morning, 

As a wholesaler of GSM mobile phones and accessories, we offer smartphones such as Motorola, Google, Honor, OnePlus, Oppo, POCO, Samsung and Xiaomi. 

By eliminating intermediaries, we provide truly competitive prices.

All phones are in stock and ready for immediate shipment. We guarantee delivery within 48 hours.

If you are interested in cooperation or have questions, please reply to this e-mail address.


Best regards
Julien Keller
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
