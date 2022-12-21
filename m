Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAD9652E44
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Dec 2022 10:11:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9AB2E41819;
	Wed, 21 Dec 2022 09:11:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AB2E41819
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t3IgbsIfbsSc; Wed, 21 Dec 2022 09:11:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3F3F241827;
	Wed, 21 Dec 2022 09:11:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F3F241827
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E40B81BF2A1
 for <devel@linuxdriverproject.org>; Wed, 21 Dec 2022 09:10:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C953C40461
 for <devel@linuxdriverproject.org>; Wed, 21 Dec 2022 09:10:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C953C40461
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6WbaOE3dfliG for <devel@linuxdriverproject.org>;
 Wed, 21 Dec 2022 09:10:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3963340327
Received: from mail.glencoeaur.com (mail.glencoeaur.com [217.61.97.113])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3963340327
 for <devel@driverdev.osuosl.org>; Wed, 21 Dec 2022 09:10:59 +0000 (UTC)
Received: by mail.glencoeaur.com (Postfix, from userid 1001)
 id 65D8A81DAF; Wed, 21 Dec 2022 09:10:52 +0000 (GMT)
Received: by mail.glencoeaur.com for <devel@driverdev.osuosl.org>;
 Wed, 21 Dec 2022 09:10:49 GMT
Message-ID: <20221221074500-0.1.l.1cgh.0.687kph884k@glencoeaur.com>
Date: Wed, 21 Dec 2022 09:10:49 GMT
From: "Zbynek Spacek" <zbynek.spacek@glencoeaur.com>
To: <devel@driverdev.osuosl.org>
Subject: Silikonmischungen
X-Mailer: mail.glencoeaur.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=glencoeaur.com; s=mail; t=1671613856;
 bh=0BgaW9t8GFER5QecxVkFsHrVi3gO/4V5KAZgJaiRYBs=;
 h=Date:From:To:Subject:From;
 b=PZmNS/Le/sEDF1OHFoFwtzqneepc5HNpbSSVrtWo7qrsjnE/2Bm5zyowWfdpdk39e
 544j8ejh+SgllpkBuEcJr/xrxAvVr5Qgobj2YX/rph54jxhYnvbl4C+KKSnmAK6oo7
 HjeSnUhslrztlGcnrz3noMpntDNNXN+IxFLqwTh+LlkmeUNDW+fmi1qYeXJ8t26XnX
 FJgxnsoNlVmWBi3mm5hZMkhQnkLQWpq1HcQSxokcQW6wIdXIAfHUwfewXQpFvXYwbX
 /T1pflA7++fyxDhFQdQo1aW+2BUXnduejziWzOUV9KD0laVK1HuSiQui1Dh9QBqQfD
 z/n0z0Rvyl9fQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=glencoeaur.com header.i=@glencoeaur.com
 header.a=rsa-sha256 header.s=mail header.b=PZmNS/Le
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
