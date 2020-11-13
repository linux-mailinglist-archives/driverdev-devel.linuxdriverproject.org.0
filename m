Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B782B2920
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Nov 2020 00:26:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 666758778C;
	Fri, 13 Nov 2020 23:26:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cIx2iPXnYXyh; Fri, 13 Nov 2020 23:26:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D381B8776C;
	Fri, 13 Nov 2020 23:26:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 575D41BF283
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 23:26:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 51B17875FE
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 23:26:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kt-jZm1e5+Qp for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 23:26:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 58D6A875DE
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 23:26:32 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68A912224A;
 Fri, 13 Nov 2020 23:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605309991;
 bh=z3nOnsx3N7BtIR1kDikhoOd4UQWcHwGb6M8Xuh1Dq1Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oDkJW5ks9NXIxsoKUVi744c5DhjBMia8ywJiSWU2El+y+l1xvX+i7vC3Ju0lfevnR
 D/Qm0nUGBJSSv6zhmgcefBVmb5iJt2TkTVXtVBKtL9A+nqwsEjCsvX8HLEXHYUKcNm
 8C9qtkganU2RYMZdUC5Wk7Cv85DDRRIAXG3LaxOM=
Date: Sat, 14 Nov 2020 00:27:28 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Zhang Qilong <zhangqilong3@huawei.com>
Subject: Re: [PATCH 2/2] staging: greybus: audio: apbridgea: Fix reference
 counter leak in error handling
Message-ID: <X68WYE+7tcytXhFG@kroah.com>
References: <20201109131347.1725288-1-zhangqilong3@huawei.com>
 <20201109131347.1725288-3-zhangqilong3@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201109131347.1725288-3-zhangqilong3@huawei.com>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, vaibhav.sr@gmail.com,
 johan@kernel.org, mgreer@animalcreek.com, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 09, 2020 at 09:13:47PM +0800, Zhang Qilong wrote:
> When gb_audio_apbridgea_register_cport failed, maybe:
> 
>   1) gb_pm_runtime_get_sync failed, usage counter remained unchanged;
> 
>   2) gb_hd_output failed, usage counter remained increased;
> 
> In error state, there are two different states in usage cpounter. So,
> if gb_hd_output failed, we should call gb_pm_runtime_put_autosuspend
> ot decrease usage counter for balabce preventing reference leak. And
> we fixed it by add gb_pm_runtime_put_autosuspend when gb_hd_output
> failed.
> 
> Fixes: 6ba7fad430d63 ("Add runtime pm support to audio protocol device class driver.")

That is not the name for that git commit id :(

Please fix up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
