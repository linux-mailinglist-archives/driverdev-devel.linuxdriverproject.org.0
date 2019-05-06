Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9EC1497D
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 14:23:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 665AE844AF;
	Mon,  6 May 2019 12:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cNOJPpoLGOBl; Mon,  6 May 2019 12:23:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C9250854C9;
	Mon,  6 May 2019 12:23:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A48661BF39F
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 12:23:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9E59724074
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 12:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rk-9YYWIFR81 for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 12:23:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic313-19.consmr.mail.gq1.yahoo.com
 (sonic313-19.consmr.mail.gq1.yahoo.com [98.137.65.82])
 by silver.osuosl.org (Postfix) with ESMTPS id 3616A234BB
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 12:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1557145428; bh=Gh4v1bmESLY+OTJgbBCltSaJkpQChRCjpSf7KQ4McTc=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From:Subject;
 b=XQyJ9yqXnQDis5x7EGTa8t8TZ5cU7lOqz1hOFmeenDMtZGTBa4LB8/hCZ2MmAcMA+2RBtcIEwvq34+58mZ4xIWZwLu42D+2hjSY2DFvOb9d1Gr0Kn0pvlPgIN2HmONF13cXXeiftQ0bULgDrBgD+GpaPv7q4M4hgibpAWXmsZoDrW3Ck5bmdrLWa1/dN8nmxLS9FIFITy7EJE8XX76F08+FGeFx5VUgAWbdm1yIakiN3f3BGKsuJd2WzG4rSIXqMG2QYG3vhah8BHpNEGRLem6U+Nbt8dk1gtCUDMcHkE1S45rupjubBKwqBuw+4XE2is0GgeIGdShRVKcmm/KQuEw==
X-YMail-OSG: kQ91LlcVM1mSSwNMnqpFmOpeKApx1JJV1fhm7er1lZwh7iZ0fZJaOF.RuZV5ifZ
 TZhUJ0MX8Tv.4ggeG_1u6VzH9ObURtLWLypmqheRqdJ76IDnvXNz6A3dMylCSkxV6qra1UoeWm.s
 K4NLrEWfIuKMNeiEFaYaPzD1yYWNp9mm46RJXji8Yfr0JpQyN1xYZ_duUY54abSL5V10yh26NFRS
 X_0bRo2RLmrRCHx3UWp8weNican5BmykAog7B6X_WTbNc8MtF_11wYe_shHMRHIF02hdNTMakCvv
 qhOeFMiReW0cojdH6xfmhxL1NoSwCMigcgG_Z3Q6b9H3FprMK7BsYJN38qA_VDsE6wHjFlvJdv_5
 q6yIzWfdyxxbCEkbdA6eZ.f7Il_JsOywDbOuaOTaLPZgtPJAw7OEK4WaRcR_s0cZVsT1AV6IdsXm
 DOTLBJkuQKVHSOhI81f7zZDMyADnrmz31PYVsd65xF1g.ODxmg2jOGR84y2_o68fyMljop4LcAQH
 haGWzlbnJtIDg77pALRgyFG6O1bI_LEcAqzwA8V_TNtHUiQGlZxuEwRm1ACOaJxlVhgAw5hlgX7W
 FkJA8_CtZG5JFVP.zSMtzPhDZDJ_F6INlKu8em.z3FqJ62unC8Ao2M.F5sJyMOghP81WOcQpVT74
 4555AFJNAauJMvkdc_kwPMwrVXtFqbophVg1b_Y_UmDSiSgLrIb3Gm0lFyUBwWZJmzAiY3HBQHDh
 75QFMJoLbgXpYR4M5LzIGyZBCq4efNAtzQYYxi1FXOHpcWYSb_smtNC4qAHMwlB.HBaJqzETXfcB
 .6hHTtb9oOEdiz8cV5d_RSjN5PFYBzJJ470gMdKmAez1Z8Di0TOmat4a3z.xCCW9NMGEuVfiG2RC
 HzATirw8RvAdV8f83Dn2cW05teKFb7xUlwYMtQ2f8z_V0PQv22A4dEx8FOT4ez2c2hTQ_Ww5_M0x
 sqNaTG.7CHS0wrf8Bfh9a6BXOg6VjOI2.3RE.CWjLS5B21HMVftSVSyQzd.AwFcBVbSvBhdOzx2v
 jY6yQVlDJz15M4jdR.w_QoDnCCBpl4kt_CDRDU6y8EEJsqiKWJ1xxifB83DKPxaFQJ.iKYHjv1TC
 t0wm.vzZ0d7FnmF10Ky1JYPvtmd9HOnWL8UWGEfKqkPcn4o5RTPVFBt1_5QtYcjWL2DM-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic313.consmr.mail.gq1.yahoo.com with HTTP; Mon, 6 May 2019 12:23:48 +0000
Received: from 115.192.86.85 (EHLO [192.168.199.101]) ([115.192.86.85])
 by smtp423.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 468dc3c63f568f8311b633c0d3f7915c; 
 Mon, 06 May 2019 12:13:45 +0000 (UTC)
Subject: Re: [PATCH] staging: erofs: set sb->s_root to NULL when failing from
 __getname()
To: Chengguang Xu <cgxu519@gmail.com>, gaoxiang25@huawei.com,
 yuchao0@huawei.com
References: <1557140462-22578-1-git-send-email-cgxu519@gmail.com>
From: Gao Xiang <hsiangkao@aol.com>
Message-ID: <e8252540-53db-f327-199f-1e1c67027515@aol.com>
Date: Mon, 6 May 2019 20:13:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557140462-22578-1-git-send-email-cgxu519@gmail.com>
Content-Language: en-US
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
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Chengguang,

On 2019/5/6 ??????7:01, Chengguang Xu wrote:
> Set sb->s_root to NULL when failing from __getname(),
> so that we can avoid double dput and unnecessary operations
> in generic_shutdown_super().
> 
> Signed-off-by: Chengguang Xu <cgxu519@gmail.com>

Thanks for catching this issue and it makes sense.

Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>

Thanks,
Gao Xiang

> ---
>  drivers/staging/erofs/super.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/erofs/super.c b/drivers/staging/erofs/super.c
> index 15c784fba879..c8981662a49b 100644
> --- a/drivers/staging/erofs/super.c
> +++ b/drivers/staging/erofs/super.c
> @@ -459,6 +459,7 @@ static int erofs_read_super(struct super_block *sb,
>  	 */
>  err_devname:
>  	dput(sb->s_root);
> +	sb->s_root = NULL;
>  err_iget:
>  #ifdef EROFS_FS_HAS_MANAGED_CACHE
>  	iput(sbi->managed_cache);
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
