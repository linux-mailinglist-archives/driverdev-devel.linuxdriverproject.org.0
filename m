Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 793FE2609F
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 11:42:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9AE5B2FC70;
	Wed, 22 May 2019 09:42:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ESjqAyGVYCu0; Wed, 22 May 2019 09:42:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B3B1C2E6B2;
	Wed, 22 May 2019 09:41:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6DD771BF421
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 09:41:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6A71B86241
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 09:41:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ggH3Wt-lU6hH for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 09:41:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0E56786239
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 09:41:54 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4M9Xw2P182658;
 Wed, 22 May 2019 09:41:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=zZ+23WAC+xWeLYEUrAQqPhhuOmQueNCocAu2ZzFiRcc=;
 b=q9aLYSX5dxiLR/NzgCIqpiRXmIyc0PQ1bpm9535qagnRhzYBYji88yKNr/E8s93tux4q
 7A7NZ/fS3gik9VSm9fIEzJHnCEm0g+aJwCJesQy/MFH9YTVGxO3LhNRA60V/vsSVJKOh
 POKP/obvhrVhBpTl1JoGCfR9q5dcETPR+09YHHuZjAxb1dEz87vqKFUovdMXCH/YU/DB
 s21HTxUp1S94H8g/o22E/SZphnUQQ/J3/sYrhuYn639hWA4Po6IDiy0LtCtrLfM3W82U
 NNgiBKkIjKPbfVoPkyttQviZhv/uN9YyILygUlKdFLVoSV2uamfoDoOu7wvqnz+hG014 Lw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2130.oracle.com with ESMTP id 2smsk5ahqx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 May 2019 09:41:42 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4M9fgmw146851;
 Wed, 22 May 2019 09:41:42 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2smsgurgmm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 May 2019 09:41:41 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4M9fcpC015233;
 Wed, 22 May 2019 09:41:38 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 22 May 2019 09:41:37 +0000
Date: Wed, 22 May 2019 12:41:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Fabio Lima <fabiolima39@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: Add missing blank lines
Message-ID: <20190522094130.GS31203@kadam>
References: <20190522004655.20138-1-fabiolima39@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522004655.20138-1-fabiolima39@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9264
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905220070
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9264
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905220070
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
 lkcamp@lists.libreplanetbr.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 09:46:55PM -0300, Fabio Lima wrote:
> This patch resolves the following warning from checkpatch.pl
> WARNING: Missing a blank line after declarations
> 
> Signed-off-by: Fabio Lima <fabiolima39@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_debug.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_debug.c b/drivers/staging/rtl8723bs/core/rtw_debug.c
> index 9f8446ccf..853362381 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_debug.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_debug.c
> @@ -382,6 +382,7 @@ ssize_t proc_set_roam_tgt_addr(struct file *file, const char __user *buffer, siz
>  	if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
>  
>  		int num = sscanf(tmp, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", addr, addr+1, addr+2, addr+3, addr+4, addr+5);
> +
>  		if (num == 6)
>  			memcpy(adapter->mlmepriv.roam_tgt_addr, addr, ETH_ALEN);
>  

I'm sorry but this function is really such nonsense.  Can you send a
patch to re-write it instead?

drivers/staging/rtl8723bs/core/rtw_debug.c
   371  ssize_t proc_set_roam_tgt_addr(struct file *file, const char __user *buffer, size_t count, loff_t *pos, void *data)
   372  {
   373          struct net_device *dev = data;
   374          struct adapter *adapter = (struct adapter *)rtw_netdev_priv(dev);
   375  
   376          char tmp[32];
   377          u8 addr[ETH_ALEN];
   378  
   379          if (count < 1)

This check is silly.  I guess the safest thing is to change it to:
		if (count < sizeof(tmp))

   380                  return -EFAULT;

It should be return -EINVAL;

   381  
   382          if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {

Remove the check for if the user passes a NULL buffer, because that's
already handled in copy_from_user().  Return -EFAULT if copy_from_user()
fails.

	if (copy_from_user(tmp, buffer, sizeof(tmp)))
		return -EFAULT;


   383  

Extra blank line.

   384                  int num = sscanf(tmp, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx", addr, addr+1, addr+2, addr+3, addr+4, addr+5);

You will need to move the num declaration to the start of the function.

   385                  if (num == 6)
   386                          memcpy(adapter->mlmepriv.roam_tgt_addr, addr, ETH_ALEN);

If num != 6 then return -EINVAL;

   387  
   388                  DBG_871X("set roam_tgt_addr to "MAC_FMT"\n", MAC_ARG(adapter->mlmepriv.roam_tgt_addr));
   389          }
   390  
   391          return count;
   392  }

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
