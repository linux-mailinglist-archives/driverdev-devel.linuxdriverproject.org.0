Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C22936FF47
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Apr 2021 19:13:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A48E86F986;
	Fri, 30 Apr 2021 17:13:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rX64cl9LMs0a; Fri, 30 Apr 2021 17:13:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E7BBE6F927;
	Fri, 30 Apr 2021 17:13:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E05841BF381
 for <devel@linuxdriverproject.org>; Fri, 30 Apr 2021 17:13:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DB0B86F939
 for <devel@linuxdriverproject.org>; Fri, 30 Apr 2021 17:13:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HGf96d1pzkTZ for <devel@linuxdriverproject.org>;
 Fri, 30 Apr 2021 17:13:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from frasgout.his.huawei.com (frasgout.his.huawei.com
 [185.176.79.56])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 94B43607FE
 for <devel@driverdev.osuosl.org>; Fri, 30 Apr 2021 17:13:07 +0000 (UTC)
Received: from fraeml739-chm.china.huawei.com (unknown [172.18.147.207])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4FWzM049hHz6wl4Y;
 Sat,  1 May 2021 01:07:24 +0800 (CST)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 fraeml739-chm.china.huawei.com (10.206.15.220) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Fri, 30 Apr 2021 19:13:05 +0200
Received: from localhost (10.52.125.96) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Fri, 30 Apr
 2021 18:13:04 +0100
Date: Fri, 30 Apr 2021 18:11:29 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v4 25/79] staging: media: tegra-vde: use
 pm_runtime_resume_and_get()
Message-ID: <20210430181129.00005f1f@Huawei.com>
In-Reply-To: <20210430180836.00006da4@Huawei.com>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <bc2b9048d4ad510eec97988ce8f3fd0d2bb26f39.1619621413.git.mchehab+huawei@kernel.org>
 <20210430180836.00006da4@Huawei.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.52.125.96]
X-ClientProxiedBy: lhreml721-chm.china.huawei.com (10.201.108.72) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
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
 linuxarm@huawei.com, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 mauro.chehab@huawei.com, Dmitry Osipenko <digetx@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 30 Apr 2021 18:08:36 +0100
Jonathan Cameron <Jonathan.Cameron@Huawei.com> wrote:

> On Wed, 28 Apr 2021 16:51:46 +0200
> Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:
> 
> > Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
> > added pm_runtime_resume_and_get() in order to automatically handle
> > dev->power.usage_count decrement on errors.
> > 
> > Use the new API, in order to cleanup the error check logic.
> > 
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> LGTM
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
drop that.  I missed the misc unwind thing caught in the other review.
Too many patches without a break :(
> 
> > ---
> >  drivers/staging/media/tegra-vde/vde.c | 19 ++++++++++++++++---
> >  1 file changed, 16 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/media/tegra-vde/vde.c b/drivers/staging/media/tegra-vde/vde.c
> > index 28845b5bafaf..1cdacb3f781c 100644
> > --- a/drivers/staging/media/tegra-vde/vde.c
> > +++ b/drivers/staging/media/tegra-vde/vde.c
> > @@ -775,9 +775,9 @@ static int tegra_vde_ioctl_decode_h264(struct tegra_vde *vde,
> >  	if (ret)
> >  		goto release_dpb_frames;
> >  
> > -	ret = pm_runtime_get_sync(dev);
> > +	ret = pm_runtime_resume_and_get(dev);
> >  	if (ret < 0)
> > -		goto put_runtime_pm;
> > +		goto unlock;
> >  
> >  	/*
> >  	 * We rely on the VDE registers reset value, otherwise VDE
> > @@ -843,6 +843,8 @@ static int tegra_vde_ioctl_decode_h264(struct tegra_vde *vde,
> >  put_runtime_pm:
> >  	pm_runtime_mark_last_busy(dev);
> >  	pm_runtime_put_autosuspend(dev);
> > +
> > +unlock:
> >  	mutex_unlock(&vde->lock);
> >  
> >  release_dpb_frames:
> > @@ -1069,11 +1071,17 @@ static int tegra_vde_probe(struct platform_device *pdev)
> >  	 * power-cycle it in order to put hardware into a predictable lower
> >  	 * power state.
> >  	 */
> > -	pm_runtime_get_sync(dev);
> > +	if (pm_runtime_resume_and_get(dev) < 0)
> > +		goto err_pm_runtime;
> > +
> >  	pm_runtime_put(dev);
> >  
> >  	return 0;
> >  
> > +err_pm_runtime:
> > +	pm_runtime_dont_use_autosuspend(dev);
> > +	pm_runtime_disable(dev);
> > +
> >  err_deinit_iommu:
> >  	tegra_vde_iommu_deinit(vde);
> >  
> > @@ -1089,7 +1097,12 @@ static int tegra_vde_remove(struct platform_device *pdev)
> >  	struct tegra_vde *vde = platform_get_drvdata(pdev);
> >  	struct device *dev = &pdev->dev;
> >  
> > +	/*
> > +	 * As it increments RPM usage_count even on errors, we don't need to
> > +	 * check the returned code here.
> > +	 */
> >  	pm_runtime_get_sync(dev);
> > +
> >  	pm_runtime_dont_use_autosuspend(dev);
> >  	pm_runtime_disable(dev);
> >  
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
