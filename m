Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4651081833
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 13:32:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01B648681B;
	Mon,  5 Aug 2019 11:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eoW6Fs44M6RI; Mon,  5 Aug 2019 11:31:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2003F867CC;
	Mon,  5 Aug 2019 11:31:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7CEFB1BF3D2
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 11:31:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 77685867A8
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 11:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LhPeeR79RI0y for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 11:31:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 95E04867A1
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 11:31:54 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x75BNRdo122429;
 Mon, 5 Aug 2019 11:31:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=2L8cakzJhmlDUI/PVZFmCvJjmyKL3t+sgXgKUu0RnRw=;
 b=BqBbkq2J3NLvu+mxaEtWvgb8rds9DSXjiz+Ft4LCmXswmN86zksTy307NEQ/PDjplsr5
 bsWaRGx5XBrKSPfP4wOQ2qB7hiRS6wWAqL2IrXsHXvpqQu8L4ikVspWbURMIyKU2tQ60
 a80luG0Fkxy48JfsSdD2QwIq2+wQge1pkUh7VZXjJfM84K4mAuJZUbzb54XFtzmHuA6F
 LwR5DkNdnim+imQkMHeIdc6TI7No6lJ4iZquX9qxl4S69Z11V8SS8nFkx9nmIv9Ny2cc
 q4+VIjAt5fg/0UdTU+xWxN22uciwcI1zYYEc+KzUEhhOimLt0SCuOARO2CKmXcA7923f Iw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2u51ptpnkw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 05 Aug 2019 11:31:53 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x75BN8Dh103758;
 Mon, 5 Aug 2019 11:31:53 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2u51kmaaup-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 05 Aug 2019 11:31:53 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x75BVqh2014816;
 Mon, 5 Aug 2019 11:31:52 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 05 Aug 2019 04:31:51 -0700
Date: Mon, 5 Aug 2019 14:31:45 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: merwintf <merwintf@gmail.com>
Subject: Re: [PATCH] Staging : rtl8188eu : rtw_security.c 	- Fixed
 warning: coding style issues 	- Fixed warning: if statement containing
 return with an else 	- Fixed check: coding style issues
Message-ID: <20190805113145.GB1974@kadam>
References: <20190805075256.GA7330@IoT-COE>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805075256.GA7330@IoT-COE>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9339
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908050130
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9339
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908050130
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
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


1) Fix the From header.
2) Fix the subject.
3) Add a blank line after the subject.
4) Split the path up into multiple patches that each do one kind of
   change.

On Mon, Aug 05, 2019 at 01:22:56PM +0530, merwintf wrote:
> Signed-off-by: merwintf <merwintf@gmail.com>
                 ^^^^^^^^
Use your real name like for a legal document.

>  static u8 crc32_reverseBit(u8 data)
>  {
> -	return (u8)((data<<7)&0x80) | ((data<<5)&0x40) | ((data<<3)&0x20) |
> -		   ((data<<1)&0x10) | ((data>>1)&0x08) | ((data>>3)&0x04) |
> -		   ((data>>5)&0x02) | ((data>>7)&0x01);
> +	return (u8)((data << 7) & 0x80)
> +		 | ((data << 5) & 0x40)
> +		 | ((data << 3) & 0x20)
> +		 | ((data << 1) & 0x10)
> +		 | ((data >> 1) & 0x08)
> +		 | ((data >> 3) & 0x04)
> +		 | ((data >> 5) & 0x02)
> +		 | ((data >> 7) & 0x01);


Put the | at the end of the line, not the start.  The cast isn't
required and it kind of messes up the white space so just leave it out
so that we don't have to change this twice.

> +	return (u8)((data << 7) & 0x80)
> +		 | ((data << 5) & 0x40)
> +		 | ((data << 3) & 0x20)
> +		 | ((data << 1) & 0x10)
> +		 | ((data >> 1) & 0x08)
> +		 | ((data >> 3) & 0x04)
> +		 | ((data >> 5) & 0x02)
> +		 | ((data >> 7) & 0x01);

	return ((data << 7) & 0x80) |
	       ((data << 5) & 0x40) |

etc.


>  }
>  
>  static void crc32_init(void)
>  {
> -	if (bcrc32initialized == 1) {
> -		return;
> -	} else {
> +	if (bcrc32initialized != 1) {

This isn't really an improvement.  Move the declarations outside the
block and do it like this:

	int i, j;
	u32 c;
	u8 *p = (u8 *)&c, *p1;

	if (bcrc32initialized == 1)
		return;

> @@ -164,7 +172,8 @@ void rtw_wep_encrypt(struct adapter *padapter, u8 *pxmitframe)
>  		return;
>  
>  	if (crypto_ops->set_key(psecuritypriv->dot11DefKey[keyindex].skey,
> -				psecuritypriv->dot11DefKeylen[keyindex], NULL, crypto_private) < 0)
> +				psecuritypriv->dot11DefKeylen[keyindex],
> +				NULL, crypto_private) < 0)
>  		goto free_crypto_private;

Introduce an "int ret;" or something.

	ret = crypto_ops->set_key();
	if (ret < 0)
		goto free_crypto_private;




> @@ -201,16 +211,20 @@ void rtw_wep_encrypt(struct adapter *padapter, u8 *pxmitframe)
>  
>  int rtw_wep_decrypt(struct adapter  *padapter, u8 *precvframe)
>  {
> -	struct	rx_pkt_attrib	 *prxattrib = &(((struct recv_frame *)precvframe)->attrib);
> +	struct	rx_pkt_attrib	 *prxattrib =
> +				  &(((struct recv_frame *)precvframe)->attrib);

This change isn't an improvement.

Anyway, hopefully that gives you some ideas.  But split up the patch.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
