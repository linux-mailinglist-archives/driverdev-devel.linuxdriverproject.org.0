Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D18B639F9A
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 14:11:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 62F898679A;
	Sat,  8 Jun 2019 12:11:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DkEKXzEU8wvL; Sat,  8 Jun 2019 12:11:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E59548675F;
	Sat,  8 Jun 2019 12:11:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D172E1BF3CE
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 12:11:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CD39920498
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 12:11:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xYBPJh-eTaEH for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 12:11:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic303-20.consmr.mail.ir2.yahoo.com
 (sonic303-20.consmr.mail.ir2.yahoo.com [77.238.178.201])
 by silver.osuosl.org (Postfix) with ESMTPS id F076720466
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 12:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1559995904; bh=KvReJB3bNC8VOtsMTPigIMkLct1KV+hCCuAue4hnO8c=;
 h=Subject:To:References:Cc:From:Date:In-Reply-To:From:Subject;
 b=bDMcOZIrahj+HBbU0JUUVnjtQSXN2ZHGV8PEzvyrcG49h/sOSRSMMdAFdrZYajF3hu1m39an1Va/bXXT/6hZwAw3X2ZVyyaFzdokvoG1klhiRAuxU7wFPB+nGlIbq5vUOVrrfLCzlxt2t4tFb8yhoomRaKOAq7IcnZmEg8EH/lO8hW5QVa8vBgbdz/yfk1h7Lx745OF5//F1rfCwwCWuMf9CNC9agw60HYGvaMIPth/IZYCc3QXiHsCpZ/pEo5YCwbE8aO4iy9L3Gu7DBjsQ7acKsuQysqzoG0xiwrCXood5cRwGCfsTE2MVe0XTdnSf6Wf/D94fMq1rfXS2+aBD0Q==
X-YMail-OSG: X0VcEgsVM1kj6QP.grn7pZmdoJ9yh4I39ENaddveK7euHDhzLkOly_LHcHUH_Bu
 52FySkfH1EhebGY_fu3o2vZUicdi99eDTrlieNDSJ4QQ6a2MZj33HaDsHzUabrD2lW1HPQR9JMa9
 FIZrwfkIJYtO5Qua5foxAHWxORV3bTCy6VKPdwVupw8UEJceEwomL59H70XyT6fRa81cEJ88plFY
 E2zT1CqyPYPY_Drc_h9LU2CnSZ64ruZ8tN5Fa4_hYhgpF_kusTOXIkCd.no05OckYdEWkjpC5CpU
 .w0HEuh_JP2djKtpz6fF2DGOnYhNtr_mMdBlDJ2RUH7maT7IrtWLYtGzZTf7CNj3s7aSq7RQedty
 z2xKwnUdQmZxkUFFy1KCBO1TB9fm6zeKnCATD7kJN5N7Ergt19T5Bl25A_UW0S5v2E6E1OG35Iad
 GnsaW_H.XDiZIXakBVIkYp6bNkE2lI0Rs1jEE9_iTlFVfn1bQvfQwU5JnYxSlexI_ZGVNx2R1FS2
 I3PTtnchEF0FOforb9HaqbWxafCdfL2.wernSWenqkk3NTH.I.WhrQqgOkZvKL8bXpr6fG_H8WMP
 l62dypNbqGqAEQaUOAidvLi4n.sJ3vhhYrwCfTXL0AIQJOqVN.GwS._c9v7zJ9Kz_8NTiYa90Lcp
 hYexQfy3qfgtzmbnrx87ohdP9wouoLypdY7G_Hs_smBU3tyUH6noIJkD2zoScHGCY8MAYJaX7jnW
 oCueO3DxAtdG00QJ8yHYTLFt7FQl_ttSrlRCWo5kwE3Jxa8bJeZlUnxNwoJ7HWLtVNSAUTdI234K
 QkbM.1JvSGNJfUlfGzTUdGz7_.J5k4PLz_QyRqQSncIUqHPn4rEpJkyf9Nzv9zoWiBDe8H5Jx3KT
 S41z3H7zoR8Js.zfLC.IspsGDq_4xruXJ_jf3b4o.1g0zgLvr7y55hS56P2pgT7_WXDE3JysYLfk
 SOdspW1bbAVL0p0NMIUhGZZ5ng9U8tz3zYjFpQYaPpAjhL4k4daPWqA2c5TyytXSRmyugsSpgLBZ
 VOePAQT1e2f3UBTw99XA6iWc0utDP.HAx3T05MUPKNSEUoopZHR63YIGswu6HOGiNjaMYMQp9rMK
 qGChP3eu.JVbr.ETsA5nGLIeQmVe0nkSm7_wnSRVOZHSFmA3w5GY8_RuS0gp24ejJZOJFsgZ7Rly
 Wa709w3kvUplTPyc.5MffCn20x4I4Vb6OMfTEeSE4F6A-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic303.consmr.mail.ir2.yahoo.com with HTTP; Sat, 8 Jun 2019 12:11:44 +0000
Received: from 125.120.226.196 (EHLO [192.168.0.101]) ([125.120.226.196])
 by smtp415.mail.ir2.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 aaa314d510ea14c03aa85b21185d2f79; 
 Sat, 08 Jun 2019 12:11:43 +0000 (UTC)
Subject: Re: [PATCH] staging: erofs: make use of DBG_BUGON
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
References: <20190608094918.GA11605@hari-Inspiron-1545>
From: Gao Xiang <hsiangkao@aol.com>
Message-ID: <0b6db3cd-25ec-49b2-93e0-31d0677507c1@aol.com>
Date: Sat, 8 Jun 2019 20:11:36 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190608094918.GA11605@hari-Inspiron-1545>
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



On 2019/6/8 ??????5:49, Hariprasad Kelam wrote:
> DBG_BUGON is introduced and it could only crash when EROFS_FS_DEBUG
> (EROFS developping feature) is on.
> replace BUG_ON with DBG_BUGON.
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>

Thanks,
Gao Xiang

> ---
>  drivers/staging/erofs/unzip_vle.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/erofs/unzip_vle.h b/drivers/staging/erofs/unzip_vle.h
> index 517e5ce..902e67d 100644
> --- a/drivers/staging/erofs/unzip_vle.h
> +++ b/drivers/staging/erofs/unzip_vle.h
> @@ -147,7 +147,7 @@ static inline unsigned z_erofs_onlinepage_index(struct page *page)
>  {
>  	union z_erofs_onlinepage_converter u;
>  
> -	BUG_ON(!PagePrivate(page));
> +	DBG_BUGON(!PagePrivate(page));
>  	u.v = &page_private(page);
>  
>  	return atomic_read(u.o) >> Z_EROFS_ONLINEPAGE_INDEX_SHIFT;
> @@ -179,7 +179,7 @@ static inline void z_erofs_onlinepage_fixup(struct page *page,
>  		if (!index)
>  			return;
>  
> -		BUG_ON(id != index);
> +		DBG_BUGON(id != index);
>  	}
>  
>  	v = (index << Z_EROFS_ONLINEPAGE_INDEX_SHIFT) |
> @@ -193,7 +193,7 @@ static inline void z_erofs_onlinepage_endio(struct page *page)
>  	union z_erofs_onlinepage_converter u;
>  	unsigned v;
>  
> -	BUG_ON(!PagePrivate(page));
> +	DBG_BUGON(!PagePrivate(page));
>  	u.v = &page_private(page);
>  
>  	v = atomic_dec_return(u.o);
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
