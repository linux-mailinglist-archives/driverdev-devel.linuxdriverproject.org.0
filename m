Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E98613142A3
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 23:12:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 499A585D70;
	Mon,  8 Feb 2021 22:12:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a-A24wocn0zD; Mon,  8 Feb 2021 22:12:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3A9485D4B;
	Mon,  8 Feb 2021 22:12:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 39EC51BF384
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 22:12:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 354B02107D
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 22:12:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pcIE6rrOlXQy for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 22:12:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C0836204CA
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 22:12:06 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3BAB764E9C;
 Mon,  8 Feb 2021 22:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612822326;
 bh=CtSTHr+IHwjK8skk3C0GZRJ7Ggi+hz69WkmTK8J4Unk=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=NmF7fyPzFlkCtl8PHMOUqRJ1Qp3oKJBh9UmbCKWc7YgXtorcrjtua7zz9FofZp5/0
 fsojDfJCf96AVChCiUpQAA0N+agLSbjxzwUYNFYYtwRXGcBuJOpKu+AXdXtAcCURRq
 7KuYhHEtRnoVC0jiGZWLPAP07/VZXOdSfxwb60ynbSTN9hyA2hCpPqhnblKSei7/an
 3qFskTUvDnQLPqEFxIDOxFgoQCIzK0folLZTvdWEyaHTU/U7ij1ZkOjGbEMc3Qg3SK
 4pbHfQYFgGq0DbyKG0UtnMU6golnRxrtcM2eU3HiflWrMHpWdrYhjuk9We1RG8R9PU
 F3mwEQIMqVwqg==
MIME-Version: 1.0
In-Reply-To: <c67050c01ffc28977fee772ced7144390a96ba51.1611949675.git.mchehab+huawei@kernel.org>
References: <cover.1611949675.git.mchehab+huawei@kernel.org>
 <c67050c01ffc28977fee772ced7144390a96ba51.1611949675.git.mchehab+huawei@kernel.org>
Subject: Re: [PATCH v8 11/14] spmi: hisi-spmi-controller: move driver from
 staging
From: Stephen Boyd <sboyd@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Mark Brown <broonie@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Date: Mon, 08 Feb 2021 14:12:04 -0800
Message-ID: <161282232477.4172033.10207198700180540073@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Mayulong <mayulong1@huawei.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 David Gow <davidgow@google.com>, Colin Ian King <colin.king@canonical.com>,
 Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Quoting Mauro Carvalho Chehab (2021-01-29 11:51:57)
> The Hisilicon 6421v600 SPMI driver is ready for mainstream.
> 
> So, move it from staging.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---

Acked-by: Stephen Boyd <sboyd@kernel.org>

Rob had some comments on the binding that don't look to be addressed
though so I'd prefer we get the binding into shape before graduating
this driver from staging.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
