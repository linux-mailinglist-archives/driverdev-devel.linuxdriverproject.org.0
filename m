Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C60659677
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Dec 2022 09:55:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A3ED400CC;
	Fri, 30 Dec 2022 08:55:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A3ED400CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jojvPd0i5wBM; Fri, 30 Dec 2022 08:55:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 841A54010D;
	Fri, 30 Dec 2022 08:55:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 841A54010D
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B9591BF310
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 30 Dec 2022 08:55:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 151B640200
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 30 Dec 2022 08:55:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 151B640200
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FuNB32y746LR
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 30 Dec 2022 08:55:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C723B401FC
Received: from mail.concretestylevix.com (mail.concretestylevix.com
 [135.125.203.239])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C723B401FC
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 30 Dec 2022 08:55:49 +0000 (UTC)
Received: by mail.concretestylevix.com (Postfix, from userid 1002)
 id 88398A25A4; Fri, 30 Dec 2022 08:55:46 +0000 (UTC)
Received: by mail.concretestylevix.com for
 <driverdev-devel@linuxdriverproject.org>; Fri, 30 Dec 2022 08:55:45 GMT
Message-ID: <20221230074500-0.1.4o.l1qh.0.8yhd4dfqdd@concretestylevix.com>
Date: Fri, 30 Dec 2022 08:55:45 GMT
From: "Aidan Wallace" <aidan.wallace@concretestylevix.com>
To: <driverdev-devel@linuxdriverproject.org>
Subject: Aluminum die casting technology
X-Mailer: mail.concretestylevix.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=concretestylevix.com; 
 s=mail; t=1672390546;
 bh=9+GiO2Umo6CVvbu8wWH/yPwLxC2Vm5LaOIyJtGJtnMw=;
 h=Date:From:To:Subject:From;
 b=eONuvPbPn+OOaMZxeT36b+Pxk/PM5NcFsE7ACVjWh4CMRUyI2kgZrWONuLRgp2yhD
 SI3636aj3hJ2eIGJaKbvAFJK7lfREC1UVhVbT5ByMJKDDs3jUrXRVLr3Vvo26j17kJ
 c0Wo/xC3RF3dJAXSQEvusDKpsAOygHQS8RhOcJ1TGVGUDmQVg2y7zh8GZiv8Vd2diO
 b44E0a9TS3S+SijRxpiUjHdnv/VJha6gSZh496VsFC/k1Fljsvs+wuneR5sH/Zk+zI
 sZxb02hrQ1+bGybO3dGUyyoZujhc1iVoMleb2cIYZcQjCX0jugdbCCaV8aYb5lgB6l
 r2M9qjtFVaEHQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=concretestylevix.com
 header.i=@concretestylevix.com header.a=rsa-sha256 header.s=mail
 header.b=eONuvPbP
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

we provide the technology of aluminum die casting.

We have production plants located in Poland, Germany and Slovakia with the possibility of flexible shifting of production between locations.

Our casting cells are mostly automatic or semi-automatic, which allows the production of large production runs with high flexibility of details in the areas from 50 to 3000g.
 
We have been trusted by many reputable clients, including BOSH, Daimler, ZF, Rockwell Automation. We provide support at every stage of project development, we develop the structure of the detail.

Would you like to talk about cooperation in this area?

Regards
Aidan Wallace
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
