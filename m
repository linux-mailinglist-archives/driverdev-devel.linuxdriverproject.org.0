Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 482A3220115
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 01:45:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF4D188EC9;
	Tue, 14 Jul 2020 23:45:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5A0jCvJA4BJk; Tue, 14 Jul 2020 23:45:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE97888222;
	Tue, 14 Jul 2020 23:45:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 93DFB1BF3AE
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 23:45:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8F72A88316
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 23:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8o5LANSKgmjZ for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 23:45:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-m964.mail.126.com (mail-m964.mail.126.com [123.126.96.4])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4451A88222
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 23:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=6ftHnufomPdHe0IaVz
 +dEJ5CVFA2F1hb5s6vpXV/Y1k=; b=RSCiZL7GvzHaS/u8IQn3oRlBsDrvo/zZes
 OUaVFAIqFkMZx3+BudzCj+DMgMTOvLjHCo7iLeuRQtSek0em9703hM2o4MIejLZC
 JbVsEYGU1FV1jzhDpWujXNNUqh9Vh78goSTFs6xpMZ2IMsEtQKxcow+1aQHdKXdH
 qE5Er4zys=
Received: from zhixu-home.lan (unknown [114.249.221.156])
 by smtp9 (Coremail) with SMTP id NeRpCgAnhRVoQw5fvYJGCg--.14881S2;
 Wed, 15 Jul 2020 07:44:40 +0800 (CST)
From: Zhixu Zhao <zhixu001@126.com>
To: zhixu001@126.com
Subject: Re: [PATCH v2] staging: gasket: core: Fix a coding style issue in
 gasket_core.c
Date: Wed, 15 Jul 2020 07:44:40 +0800
Message-Id: <20200714234440.27009-1-zhixu001@126.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200617161127.32006-1-zhixu001@126.com>
References: <20200617161127.32006-1-zhixu001@126.com>
X-CM-TRANSID: NeRpCgAnhRVoQw5fvYJGCg--.14881S2
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
 VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvj4Rn2-eDUUUU
X-Originating-IP: [114.249.221.156]
X-CM-SenderInfo: x2kl53qqqrqiyswou0bp/1tbiZghhfFpD+1v+tAAAsA
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, rcy@google.com, rspringer@google.com,
 joe@perches.com, toddpoynor@google.com, dan.carpenter@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 18, 2020 at 12:11:27AM +0800, Zhixu Zhao wrote:
> A coding alignment issue is found by checkpatch.pl.
> Fix it by using a temporary for gasket_dev->bar_data[bar_num].
> 
> Signed-off-by: Zhixu Zhao <zhixu001@126.com>

Hi, there~

Does anybody have any further comments on this?
Can it be merged?

Zhixu

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
