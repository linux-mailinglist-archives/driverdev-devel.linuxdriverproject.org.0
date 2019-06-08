Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E125D39F7C
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 14:06:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED8C6860BE;
	Sat,  8 Jun 2019 12:06:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sxzuc2YkJqP9; Sat,  8 Jun 2019 12:06:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8EA2D85F6C;
	Sat,  8 Jun 2019 12:06:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 108391BF3CE
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 12:06:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0C7CE20498
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 12:06:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dJkDiUhYKwXj for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 12:06:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic314-19.consmr.mail.gq1.yahoo.com
 (sonic314-19.consmr.mail.gq1.yahoo.com [98.137.69.82])
 by silver.osuosl.org (Postfix) with ESMTPS id 0F1CA20466
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 12:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1559995574; bh=9E7MyQwq36DvghPQy6gbYSm5lbo+i9g9K12tGggIgLM=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From:Subject;
 b=r9GHNBdfTrGLdNxj56yG+fGQud77WJx4xUHXbzfggSV9sJlANrSYsCvTs/W43HtH2U3g+8f3x7gVgJtWKBlPGw8qU8T1UH472yeVrC5//sr2y9t0f7h66BFAVXJXVwjSHAeeuTXnkAGCC2apX8Y8aZmuH4iBwwhfra9aFxMJfukDgL6vJWTtItwGSheBLV+g8aPgH527HONbu+AZD8ssjTYZntFkuRZvA7XTSlsC5srEvhThHuVgBYpjhCXCc6I00hguMBoIvRQvCOoKOR2WURnTvBorRSYmnqGvqJBforNoklFu9bV8hjxc2zA2A5NJSk2i9OuKo/tYyeI5u3byVw==
X-YMail-OSG: _4r6oOMVM1kH7YRduJ1JYn5fyb2KOPttvNkglhqqCq6jnBgKu8OubVI_xEvmyEo
 XawmcGsu7eaISjVB7govGwor3Lv3LjdyQzP1F2nVX_3BFjPWG4S9Rn4bUeo68fhf58GZhYKHMDwa
 vBu4.Gh4cYYJ4a.3km5VA_iC7izhpPeuzc5I7a_L.6ie_1i6TWY4qJM.GT4lniFw49cmwcL_uvra
 qEZhZN8WnlBESdUPDSd1aMc9JJCTyEJPROTq7VjMBkIYc075A8R8iBPfiWN1F7I6GMHMkIYyRIkU
 M7YwVuuPEi4ZY9wkeVlXB_qS3Pf.r9vnb9PGg9w8kX89L6E7gQgk6UiIGa4kdbxkdY7hAu7HmlVU
 uqMz.oeVKVkMr9v2xjFwBnUAn.sQsPC3LwpghbB4v87W_9T_U9pGFtpecbGGA04xYggw46yqeoom
 koMV.V70oC5pChfdevkqi6QucSKqbXIom84RRsNr5oob7uiWOYTlIcAMK3MO8bz_TT0b.WRI3aAv
 Nz4oud87s0Aw9GwilkltRCGoRkg2UstH8k_XS0BE8AkCSKoxnwwJ9bHObofuY4lzDAPYDUjltf1m
 p4G0V.m6SFvHn3RQhDifz2xNDnW_74fQyC4T1FT7rtb.SV5Pt9uDoAK84Ihs4h3CoQlzkr89OLNR
 HVc1pLxbHIKgFZKUU8YQHlCTpl9_iuLrZqxnJ3tNveN7f0rmI8HD8cjpkG._8YjhZuoYRraruJ4l
 d8vik1f8BN9csyA6mP7WBM6nCFFWcmM05PZxWDqKHRtec4I4tTaqTUc2PPT6g5E8OOaYC1wJjwMh
 pGXepoSCH_TYM2YJvfqjcSd5yi2m4ilkHraILk11887h4qETnNuFZ2XQZ.ECn39bjW.uG_9RrITU
 9gbxuwV6wuQbEw3lBjOlLZO7R70K_wBzFY_OWda0F0FCuTTRqvmG3ribTSSF9WGn182KfwNoy2xw
 UNSaLSTvhTcLoAlcQBW7.t.tFzWysiK8XGjc7CCbTos2gkCNH7srHDvQ9onVEbmcdK69Y0szV8aN
 .gOm7womykJxf31YPQAFlToQw6oUgKcfVU3uzPbtq9xLdChzG6Bwz41aNkRuPkP5VcH3hhiP9KQh
 8m_hF83O6PgwaATFlJbwyw5UwKoE6HcO2YeXxzeyZD1IhpIU2aMZvpvUljMpxLvKtT4cNJWiuV6M
 MfDElje1ByvLUIz_RdAg5bBG.4_HUNJux62uVfpgM2g--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.gq1.yahoo.com with HTTP; Sat, 8 Jun 2019 12:06:14 +0000
Received: from 125.120.226.196 (EHLO [192.168.0.101]) ([125.120.226.196])
 by smtp403.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 3dfb8dff750982ce7b5096f4cd30efc9; 
 Sat, 08 Jun 2019 12:06:14 +0000 (UTC)
Subject: Re: [PATCH] staging: erofs: fix warning Comparison to bool
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
References: <20190608093937.GA10461@hari-Inspiron-1545>
From: Gao Xiang <hsiangkao@aol.com>
Message-ID: <8aa1fe39-27f3-e74b-5985-c67e04be2f31@aol.com>
Date: Sat, 8 Jun 2019 20:06:08 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190608093937.GA10461@hari-Inspiron-1545>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chao Yu <yuchao0@huawei.com>, linux-kernel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 2019/6/8 ??????5:39, Hariprasad Kelam wrote:
> fix below warnings reported by coccicheck
> 
> drivers/staging/erofs/unzip_vle.c:332:11-18: WARNING: Comparison to bool
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>

Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>

Thanks,
Gao Xiang

> ---
>  drivers/staging/erofs/unzip_vle.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/unzip_vle.c
> index 9ecaa87..f3d0d2c 100644
> --- a/drivers/staging/erofs/unzip_vle.c
> +++ b/drivers/staging/erofs/unzip_vle.c
> @@ -329,7 +329,7 @@ try_to_claim_workgroup(struct z_erofs_vle_workgroup *grp,
>  		       z_erofs_vle_owned_workgrp_t *owned_head,
>  		       bool *hosted)
>  {
> -	DBG_BUGON(*hosted == true);
> +	DBG_BUGON(*hosted);
>  
>  	/* let's claim these following types of workgroup */
>  retry:
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
