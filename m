Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CDE1FF380
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 15:45:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CE79426698;
	Thu, 18 Jun 2020 13:45:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vl9Zxzv6Rr57; Thu, 18 Jun 2020 13:45:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B662326679;
	Thu, 18 Jun 2020 13:45:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D0D641BF29C
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 13:45:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CAAA187AA0
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 13:45:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bvNgp873QjZT for <devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 13:45:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-m964.mail.126.com (mail-m964.mail.126.com [123.126.96.4])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 498B987A8B
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 13:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=dE/u/Olq00IitY+Hxe
 hpcTZ9LTITxRuFXdDzNJlgZMU=; b=MLnc9/S4PnYP4jmWCYMN3uxxK+/xLKP2GX
 kLHeK/H888C0chYzZP4d7SxJk1zrzJTKN/A8b+IFdy2H8K6Yxju0KIJFjThOCSK5
 sWsk8Z4uoLc8TXdrLoh38C/7jp762t5ErjVnJk7KTpEJIwH4LpB7r5KFqCkK96Sz
 eaV1q8Nng=
Received: from zhixu-home.lan (unknown [114.249.228.138])
 by smtp9 (Coremail) with SMTP id NeRpCgBnbwu2b+tekoqNSA--.114S2;
 Thu, 18 Jun 2020 21:44:23 +0800 (CST)
From: Zhixu Zhao <zhixu001@126.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2] staging: gasket: core: Fix a coding style issue in
 gasket_core.c
Date: Thu, 18 Jun 2020 21:44:22 +0800
Message-Id: <20200618134422.24278-1-zhixu001@126.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200617161127.32006-1-zhixu001@126.com>
References: <20200617161127.32006-1-zhixu001@126.com>
X-CM-TRANSID: NeRpCgBnbwu2b+tekoqNSA--.114S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZF4kuFy7tr1fGrW3AFyrWFg_yoW3AwbEkr
 WxZrykG3Z8GasYyrWUCrsxJF9rCw1fJFnY93y5t34DG34kAwsxXws7Gr40krnxZ3Z7X3Zx
 Z3sFvas7Jw12gjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUeLNVDUUUUU==
X-Originating-IP: [114.249.228.138]
X-CM-SenderInfo: x2kl53qqqrqiyswou0bp/1tbiuxdHfFpEA3VICwAAs8
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Richard Yeh <rcy@google.com>,
 Rob Springer <rspringer@google.com>, Joe Perches <joe@perches.com>,
 Todd Poynor <toddpoynor@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

At 2020-06-18 03:10:02, "Dan Carpenter" <dan.carpenter@oracle.com> wrote:
>It would be better to do this in the declaration block so you can change
>the earlier two uses in this function:
>
>+	struct gasket_bar_data *data = &gasket_dev->bar_data[bar_num];
>-	ulong desc_bytes = driver_desc->bar_descriptions[bar_num].size;
>+	ulong desc_bytes = data->size;
>
>...
>
>-	if (driver_desc->bar_descriptions[bar_num].type != PCI_BAR) {
>+	if (data->type != PCI_BAR) {

`struct gasket_bar_data *data` and `driver_desc->bar_descriptions[bar_num]`
are not the same thing as I see it. Besides, `struct gasket_bar_data`
doesn't have a `size` field (it does have a `length_bytes` field).
So... did I miss anything?

-- 
Zhixu Zhao
https://github.com/zhaozhixu

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
