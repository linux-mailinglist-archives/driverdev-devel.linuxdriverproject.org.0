Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC959A3623
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 14:00:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2FA7187E8E;
	Fri, 30 Aug 2019 12:00:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UMtgBhfaF7nr; Fri, 30 Aug 2019 12:00:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 240B087EAE;
	Fri, 30 Aug 2019 12:00:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3082F1BF29F
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 11:59:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2CD5D8545B
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 11:59:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id niW5hk83NAxg for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 11:59:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic303-20.consmr.mail.ir2.yahoo.com
 (sonic303-20.consmr.mail.ir2.yahoo.com [77.238.178.201])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1D6D78543A
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 11:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1567166396; bh=WNQcku/ghJ+02xOFF6/bqpQqBFtbzhnUrUZfG3N4Odg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=biPqc2PZaeUn35iIFtuMZ9gQcit7Vjarf9e/WYwir5F8H1QoQEcjkdRm9773j7iQn+1cPrM57gV68wfOhvVTj+hpJlzc6anuR1Dbq529XnOte8CQLoqjk2gakNpoOVrzMvTcJNIWmN+cERAggHvBQmEDrBAu/Uf0U2uK8cObjf3D2TL9B2cpoa3YSAblYuDKaUuNRogqgBY2aL6tHJbqUv1UzSs/PV2vBojRbwpkY2pFtOC9VYHWHWfwlh71PeyGz/DPUVdqQKNgBISMt5FsCg3WiTaU4e+2B5849YYyE8hgc3m35D/Fv2/9vHqH0UCyiZrlnBAyhulOZ077Biojcg==
X-YMail-OSG: LkknR7YVM1nLb90_eSTDuhJtSFPvWDP2rElYtNbbjaNA.iZsNzrrvrfviK.qIjd
 IXus2o7fdFy6guCWcEE1IcmtzHO0sZbnBf7YkuNpoTiFCIpo.tNy7fj_OtTGtImv7z_dJ4pjY9z4
 W0mJAmtvroVvwMayYQnelkXq5BUC_DgCITBo.8A0LdP01631DXZmtbDsZffAgmJ3QCQYMIL3iNo4
 7eVmJbyav6A_9XjIXnEE3bxIgnQi62jL4ApxnQKyknlhHOlRQjcAupHVJvMAeyqTmzFirrzMwstk
 3RQRJmzExRWWkAo5KxLzsVihNahDDdx0WmD_nxpE5ZWPREMdhrfCVMQivesX625BIVMyIGWY7ajy
 IP8hZXqh_skzrx_voSMJ8GuswsehWaQu47RDvG1MfoPYy8IIkM1zdlm0i8nb27qtSYVa3xnxOIAN
 pqnRhCJCN2SNgDA_IkK01WOohiwW_2qkPG9UMAGvWCYGX89j7ycfKx7C5qQjmubla6739vIZS4vj
 Q5WKt.3zdqNE8yzMUQOiXJl7fhSe3jdVgBAkF_0hPB9DPUfDKjUs2w3yS8FuXhrkrD4cGhxJUh9e
 a0WAS334xn7ZX8oPLuXiI5b998pUuVTUo9UGvXvGvS1JPDp9Dt2Ayz.5EkkZzM5Kddug813J3o1U
 f8QA8M5RAT7eWeJQpphKkIPS5JPY32B2jf40HmTpjo0rId9P4Ansa3uj06t6nwoU7NaY7jRD9nuZ
 937KKs3dRTVWWlk9p2LOhM1EgvXs7onekJYZ7aNFgtIgJHCOhEJfPgS7.RIuJojDUbYUv1ymhYQn
 CBXad.giLCj6eUOW6W.LbAdGz16oV7LlbKvHOraBv4BBhEvn3q4qExZfHVean2IxytEWHL_WBGmY
 _4wTd42W4DAjjUM5maZzDNVGlNpKqqiWelN3felx6eseB0e_6oxuzhwx1o2LH7ztSXW3qdrkCUxg
 W8P.CiVPaQXGPGLCHN_hSkMDsAzpW8uiKLtE1HolBwKsbLIVNNetgVwWwVOcIerv2ai8q40aPpG0
 iHKzCxoqtuUyZnQA3t526NFuo_ESLfCN9NDk3dbyKdRWoax6CamsNBeE7Dh6aurV7zDAxwnp.9h.
 VeOUNJlNeP8mwrk8QPjlDtKLLAEK_ZsOEfJjbqela8Qzrpmwata_ym.s3cNRHE0OMICdBT3xGEMG
 qbvGhXswzZKllomaKHS9pbCWpfdohlXI2zZ_nN_217Cpr09wzCAO1BSjKvBAFmJGr98IdWokPJ9F
 0ghXJHYTyS3lm8wrY5x3SUzS0ca_niuI-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic303.consmr.mail.ir2.yahoo.com with HTTP; Fri, 30 Aug 2019 11:59:56 +0000
Received: by smtp432.mail.ir2.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 08026dd6bbce525e72ed2e9b63384b86; 
 Fri, 30 Aug 2019 11:59:55 +0000 (UTC)
Date: Fri, 30 Aug 2019 19:59:48 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Pratik Shinde <pratikshinde320@gmail.com>
Subject: Re: [PATCH] erofs: using switch-case while checking the inode type.
Message-ID: <20190830115947.GA10981@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <20190830095615.10995-1-pratikshinde320@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830095615.10995-1-pratikshinde320@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, yuchao0@huawei.com,
 linux-erofs@lists.ozlabs.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Pratik,

The subject line could be better as '[PATCH v2] xxxxxx'...

On Fri, Aug 30, 2019 at 03:26:15PM +0530, Pratik Shinde wrote:
> while filling the linux inode, using switch-case statement to check
> the type of inode.
> switch-case statement looks more clean here.
> 
> Signed-off-by: Pratik Shinde <pratikshinde320@gmail.com>

I have no problem of this patch, and I will do a test and reply
you "Reviewed-by:" in hours (I'm doing another patchset to resolve
what Christoph suggested again)...

Thanks,
Gao Xiang

> ---
>  fs/erofs/inode.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/fs/erofs/inode.c b/fs/erofs/inode.c
> index 80f4fe9..6336cc1 100644
> --- a/fs/erofs/inode.c
> +++ b/fs/erofs/inode.c
> @@ -190,22 +190,28 @@ static int fill_inode(struct inode *inode, int isdir)
>  	err = read_inode(inode, data + ofs);
>  	if (!err) {
>  		/* setup the new inode */
> -		if (S_ISREG(inode->i_mode)) {
> +		switch (inode->i_mode & S_IFMT) {
> +		case S_IFREG:
>  			inode->i_op = &erofs_generic_iops;
>  			inode->i_fop = &generic_ro_fops;
> -		} else if (S_ISDIR(inode->i_mode)) {
> +			break;
> +		case S_IFDIR:
>  			inode->i_op = &erofs_dir_iops;
>  			inode->i_fop = &erofs_dir_fops;
> -		} else if (S_ISLNK(inode->i_mode)) {
> +			break;
> +		case S_IFLNK:
>  			/* by default, page_get_link is used for symlink */
>  			inode->i_op = &erofs_symlink_iops;
>  			inode_nohighmem(inode);
> -		} else if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode) ||
> -			S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode)) {
> +			break;
> +		case S_IFCHR:
> +		case S_IFBLK:
> +		case S_IFIFO:
> +		case S_IFSOCK:
>  			inode->i_op = &erofs_generic_iops;
>  			init_special_inode(inode, inode->i_mode, inode->i_rdev);
>  			goto out_unlock;
> -		} else {
> +		default:
>  			err = -EFSCORRUPTED;
>  			goto out_unlock;
>  		}
> -- 
> 2.9.3
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
