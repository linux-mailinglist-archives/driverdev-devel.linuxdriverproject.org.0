Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4BA2ECEE4
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Jan 2021 12:41:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A36DA868B8;
	Thu,  7 Jan 2021 11:41:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zlKtBoES9JZA; Thu,  7 Jan 2021 11:41:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6382086881;
	Thu,  7 Jan 2021 11:41:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2355E1BF37C
 for <devel@linuxdriverproject.org>; Thu,  7 Jan 2021 11:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1FC41862D4
 for <devel@linuxdriverproject.org>; Thu,  7 Jan 2021 11:41:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tZur7W4vZw6Y for <devel@linuxdriverproject.org>;
 Thu,  7 Jan 2021 11:41:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2341486278
 for <devel@driverdev.osuosl.org>; Thu,  7 Jan 2021 11:41:41 +0000 (UTC)
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6BB471F4107E;
 Thu,  7 Jan 2021 11:41:38 +0000 (GMT)
Date: Thu, 7 Jan 2021 12:41:32 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH] media: rkvdec: silence ktest bot build warning
Message-ID: <20210107124132.3648e789@collabora.com>
In-Reply-To: <76b5569c-bc19-3d11-4da7-cf0dbb244433@xs4all.nl>
References: <20201208155540.340583-1-adrian.ratiu@collabora.com>
 <76b5569c-bc19-3d11-4da7-cf0dbb244433@xs4all.nl>
Organization: Collabora
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Adrian Ratiu <adrian.ratiu@collabora.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 7 Jan 2021 10:13:43 +0100
Hans Verkuil <hverkuil@xs4all.nl> wrote:

> On 08/12/2020 16:55, Adrian Ratiu wrote:
> > Some configurations built by the ktest bot produce the following
> > warn, so mark the struct as __maybe_unused to avoid unnecessary
> > ML spam.
> >   
> >>> drivers/staging/media/rkvdec/rkvdec.c:967:34: warning: unused variable 'of_rkvdec_match' [-Wunused-const-variable]  
> >    static const struct of_device_id of_rkvdec_match[] = {
> > 				    ^
> >    1 warning generated.  
> 
> I suspect that this is because there is no 'depends on OF' in the Kconfig.
> 
> '__maybe_unused' isn't used for this anywhere else, so this does not seem like the
> right approach.

It's not uncommon to do that, especially when you want the driver to be
compile-tested (`git grep -C2 __maybe_unused|grep of_device_id` even
reports 2 drivers in the media tree :P). A `depends on OF` or an
`#ifdef CONFIG_OF` section surrounding the of_rkvdec_match declaration
would also do the trick.

> 
> Regards,
> 
> 	Hans
> 
> > 
> > vim +/of_rkvdec_match +967 drivers/staging/media/rkvdec/rkvdec.c
> > 
> >    966  
> >  > 967	static const struct of_device_id of_rkvdec_match[] = {  
> >    968		{ .compatible = "rockchip,rk3399-vdec" },
> >    969		{ /* sentinel */ }
> >    970	};
> >    971	MODULE_DEVICE_TABLE(of, of_rkvdec_match);
> >    972
> > 
> > Cc: Boris Brezillon <boris.brezillon@collabora.com>
> > Cc: Ezequiel Garcia <ezequiel@collabora.com>
> > Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> > ---
> >  drivers/staging/media/rkvdec/rkvdec.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> > index aa4f8c287618..3af0f02ec59b 100644
> > --- a/drivers/staging/media/rkvdec/rkvdec.c
> > +++ b/drivers/staging/media/rkvdec/rkvdec.c
> > @@ -992,7 +992,7 @@ static void rkvdec_watchdog_func(struct work_struct *work)
> >  	}
> >  }
> >  
> > -static const struct of_device_id of_rkvdec_match[] = {
> > +static const struct of_device_id __maybe_unused of_rkvdec_match[] = {
> >  	{ .compatible = "rockchip,rk3399-vdec" },
> >  	{ /* sentinel */ }
> >  };
> >   
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
