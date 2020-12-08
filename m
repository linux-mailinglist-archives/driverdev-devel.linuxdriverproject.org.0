Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BCD2D29CB
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 12:31:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4E9E886D6F;
	Tue,  8 Dec 2020 11:31:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k7YtSKRttv8w; Tue,  8 Dec 2020 11:31:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C01E686F06;
	Tue,  8 Dec 2020 11:31:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4201B1BF834
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 11:31:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3E2AC86D7B
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 11:31:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q0axZZ9DN-mY for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 11:31:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0851F85F94
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 11:31:13 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B8BU1e6148438;
 Tue, 8 Dec 2020 11:31:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=n9Vzzz9JyUSKWqhgwt+EcBwNm7sdSMdz33I19pCtH/8=;
 b=t4cCHBz9eHE/WDlGePsNoEnPl5t+XFViu5hyoUA3zHnVuFOesb01E44hHPoW1MIf+8Xh
 xKMZ7oWhffbC/mlj8aZC5ZaQn/EwY1sntTRTz1TylvdxZz8VkEscXJwr6ydhrBQZPtDS
 IwIq+2zJMk/BSHzpU31RrYQtGxaeIclVu3QZSbTiV323glTyQsI6fdsjkYRmteyojztm
 CGekIinEdrIhhdO3osV/YbD0IpxJZ5rQymdKhXUH6mMLVtDxgeZXVS/Fhymvi3cQmKEo
 xZ5C8+i27K9S2i0ybr0I1KcjXIF3zFQdvC2Yg6Svru/ZhxMR6rXcE4icUjN1hOT6FRMI 8Q== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 35825m2ah3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 08 Dec 2020 11:31:12 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B8BUe94104196;
 Tue, 8 Dec 2020 11:31:11 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 358kysr2nj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Dec 2020 11:31:11 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0B8BV1oC016947;
 Tue, 8 Dec 2020 11:31:01 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 08 Dec 2020 03:31:01 -0800
Date: Tue, 8 Dec 2020 14:30:53 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
Subject: Re: [PATCH 06/12] media: atomisp: Add parentheses
Message-ID: <20201208113053.GB2767@kadam>
References: <20201207192638.15219-1-Philipp.Gerlesberger@fau.de>
 <20201207192638.15219-7-Philipp.Gerlesberger@fau.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201207192638.15219-7-Philipp.Gerlesberger@fau.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9828
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 spamscore=0 mlxscore=0
 malwarescore=0 suspectscore=0 mlxlogscore=999 bulkscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012080073
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9828
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0 bulkscore=0
 phishscore=0 mlxlogscore=999 clxscore=1015 priorityscore=1501 mlxscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012080073
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
Cc: devel@driverdev.osuosl.org, linux-kernel@i4.cs.fau.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 ij72uhux@stud.informatik.uni-erlangen.de, sakari.ailus@linux.intel.com,
 mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 07, 2020 at 08:26:33PM +0100, Philipp Gerlesberger wrote:
> ERROR:COMPLEX_MACRO: Macros with complex values should be
> enclosed in parentheses
> 
> Co-developed-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
> Signed-off-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
> Signed-off-by: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
> ---
>  .../media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h    | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h b/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h
> index 9cd3d92b34c9..2c02dd1cf27a 100644
> --- a/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h
> +++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h
> @@ -22,8 +22,8 @@
>  #define STORAGE_CLASS_RMGR_H extern
>  #define STORAGE_CLASS_RMGR_C
>  #else				/* __INLINE_RMGR__ */
> -#define STORAGE_CLASS_RMGR_H static inline
> -#define STORAGE_CLASS_RMGR_C static inline
> +#define STORAGE_CLASS_RMGR_H (static inline)
> +#define STORAGE_CLASS_RMGR_C (static inline)

This will break the build.

You should just remove these defines.  They don't make any sort of
sense.  The programmer should know what things need to be static and
what not.  Generally leave "inline" out, and let the compiler decide.
If you have a legit reason to think you are smarter than the compiler
(benchmarking data) then probably __always_inline is more appropriate.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
