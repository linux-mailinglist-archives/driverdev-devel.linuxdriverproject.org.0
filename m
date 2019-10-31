Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC1EEB123
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Oct 2019 14:25:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99B79877E7;
	Thu, 31 Oct 2019 13:25:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fNGk3ZK-xX+i; Thu, 31 Oct 2019 13:25:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F305877D3;
	Thu, 31 Oct 2019 13:25:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A0E8B1BF3C4
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 13:25:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9D762228EC
 for <devel@linuxdriverproject.org>; Thu, 31 Oct 2019 13:25:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H2XqAEp48Owr for <devel@linuxdriverproject.org>;
 Thu, 31 Oct 2019 13:25:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id D08192280C
 for <devel@driverdev.osuosl.org>; Thu, 31 Oct 2019 13:25:15 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9VDNNOg099567;
 Thu, 31 Oct 2019 13:25:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=4EaenIUUVj/5ysEKkiJddwhA1/DDa77ctlLESSIuFlg=;
 b=MV7E6u1Dh3gksNYOSvZg2+3+NMPZI6Jv6EHle7fh/krrlnNSLc1zolutX9ZnzLk+wRPR
 ijTM4emqVxu4T3dM92ly/RiXG1/k8ICQaey5YYgMMnYW+7/CoaDPqYTnQdUCOCryJoqb
 BFwj9COYwvEed6vW/eu7yJn1JohPcYOq6Nw5OiMaab8aPZ0DkG/dsX4TbtX0eP24CtQG
 ksWwbrjnqZRSuEflA+w+sfl9WooXpuOnNLO1BoIA/iV6Gz1FF+w+1vR/S20jcdYO/RKf
 j6eTIIo0Kb4TfC37VuZ2Swtv2KmsNHBDZZiFEFwFFKlwJr92T5wU9pORbSzGQWjXsGL0 2Q== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2vxwhfu723-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 31 Oct 2019 13:25:13 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9VDMY4i063251;
 Thu, 31 Oct 2019 13:25:13 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2vyqpe3t63-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 31 Oct 2019 13:25:13 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9VDPCDj006216;
 Thu, 31 Oct 2019 13:25:12 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 31 Oct 2019 06:25:12 -0700
Date: Thu, 31 Oct 2019 16:25:03 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Roi Martin <jroi.martin@gmail.com>
Subject: Re: [PATCH v2 6/6] staging: exfat: replace kmalloc with kmalloc_array
Message-ID: <20191031132503.GD1705@kadam>
References: <20191031123139.32361-1-jroi.martin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031123139.32361-1-jroi.martin@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9426
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=929
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910310139
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9426
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910310139
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
 valdis.kletnieks@vt.edu, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 31, 2019 at 01:31:39PM +0100, Roi Martin wrote:
> diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
> index f71235c6a338..f4f82aecc05d 100644
> --- a/drivers/staging/exfat/exfat_core.c
> +++ b/drivers/staging/exfat/exfat_core.c
> @@ -713,8 +713,8 @@ static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
>  
>  	u32 checksum = 0;
>  
> -	upcase_table = p_fs->vol_utbl = kmalloc(UTBL_COL_COUNT * sizeof(u16 *),
> -						GFP_KERNEL);
> +	upcase_table = kmalloc_array(UTBL_COL_COUNT, sizeof(u16 *), GFP_KERNEL);
> +	p_fs->vol_utbl = upcase_table;

This patch is fine, but one idea for future patches is that you could
remove the "upcase_table" variable and use "p_fs->vol_utbl" everywhere
instead.

>  	if (!upcase_table)
>  		return -ENOMEM;

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
