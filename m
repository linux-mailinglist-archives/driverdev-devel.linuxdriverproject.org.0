Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C65652E21
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Dec 2022 09:56:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3DC97404A1;
	Wed, 21 Dec 2022 08:56:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3DC97404A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OvTbq_2pv8tN; Wed, 21 Dec 2022 08:56:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CED040327;
	Wed, 21 Dec 2022 08:56:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CED040327
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE00D1BF3F6
 for <devel@linuxdriverproject.org>; Wed, 21 Dec 2022 08:56:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 981D0417C1
 for <devel@linuxdriverproject.org>; Wed, 21 Dec 2022 08:56:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 981D0417C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id keyVOC5_OR_d for <devel@linuxdriverproject.org>;
 Wed, 21 Dec 2022 08:56:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3612F417BB
Received: from mail.glencoeaur.com (mail.glencoeaur.com [217.61.97.113])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3612F417BB
 for <devel@linuxdriverproject.org>; Wed, 21 Dec 2022 08:56:04 +0000 (UTC)
Received: by mail.glencoeaur.com (Postfix, from userid 1001)
 id D3FE681D13; Wed, 21 Dec 2022 08:55:48 +0000 (GMT)
Received: by mail.glencoeaur.com for <devel@linuxdriverproject.org>;
 Wed, 21 Dec 2022 08:55:44 GMT
Message-ID: <20221221074500-0.1.l.1bl0.0.18dqhmb2xr@glencoeaur.com>
Date: Wed, 21 Dec 2022 08:55:44 GMT
From: "Zbynek Spacek" <zbynek.spacek@glencoeaur.com>
To: <devel@linuxdriverproject.org>
Subject: Silikonmischungen
X-Mailer: mail.glencoeaur.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=glencoeaur.com; s=mail; t=1671612960;
 bh=0BgaW9t8GFER5QecxVkFsHrVi3gO/4V5KAZgJaiRYBs=;
 h=Date:From:To:Subject:From;
 b=bkAoCoczo9uKI5fpZ+h3TtSegE+3hjjyZ9xOluxxouCZrAk7NFVmD67YfdLHfnsPl
 gon2EQy0OXrTvegC/AN8TPMN9YBwPBEb1CHrGqzrBDDwjCG3Lw8Pv6ZH/R6577MkAi
 3HzEJ6JtiMUxKCHe/fM41Yue+VOZW3/oe+cCIc5kK4n59q1bLHqBbW22tuBzRR9Ux3
 woBzqWcBOu3ko0oDZene6Nu0As70KF2msEYl63F16e4ZZwFNcoRkRHu5ZPoQSn+fva
 Mm3KDR5ggvMGyCFaUUrJp7AieTuQMm5m3h6Y8CBksFnZLUuJerM8JfwuFf5mlq4p3L
 RZGTMQAm2jzPQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=glencoeaur.com header.i=@glencoeaur.com
 header.a=rsa-sha256 header.s=mail header.b=bkAoCocz
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

do you need intermediates for processing, plastics (e.g. rubber) or silicone mixtures?

We provide a wide range of silicone rubbers with various properties, silicone mixtures from renowned manufacturers such as Wacker, Elastosil LR and dyes, stabilizers, primers and anti-adhesive additives.

We also produce technical silicone compounds with increased resistance to oils, resistant to high temperatures and water vapor, conductive and many more.

We provide fast order fulfillment, timely deliveries and cost optimization.

Can I introduce what we can offer you?


Zbynek Spacek
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
