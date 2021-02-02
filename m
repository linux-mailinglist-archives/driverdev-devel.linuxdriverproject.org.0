Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0E830C3E5
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Feb 2021 16:35:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 01567226E9;
	Tue,  2 Feb 2021 15:35:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rKxfaelDxdOi; Tue,  2 Feb 2021 15:35:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D798120433;
	Tue,  2 Feb 2021 15:35:18 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D83E61BF9B6
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 15:35:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D256E84B89
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 15:35:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YlDPZB2qtgT0
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 15:35:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4788B84C58
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 15:35:12 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 112FTnw9150397;
 Tue, 2 Feb 2021 15:35:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=vESYjUe+D5G+ySfaJPZhYxXtAkNws7P85u/aXIWtpTc=;
 b=Jkdntwqaj3A3yq2Ch9AIQClBygyy0zaG4leq8c0cnPFvcVfdCWx35oFU10vJ27mCnWs/
 vGjp+oOxcK0fHCoizGN9v8D8u/LW5zE1oP0m+yvHqerdc7+Gp3pkhyq803G5hYQSgbQH
 H75Im7LWIk1MJo1AOux5EvVhLjb/f28mbAZqZYAFWCGVqe4/tzHw5S19sW+M2x2CTrEd
 Y4CJM/sBY50Lxw35LexVVcOVcUAmA+ujyUkqb2Vgte5U2EJgDJaPHLy37uSmo+OaLjWe
 nUZoOSQvMqOSYZHnzI8UISxoJkU+SBey+gr9g844bNxggLZqGjccKYJXpStI7YpgIpEL UA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 36dn4wh7sr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Feb 2021 15:35:10 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 112FUn2H057012;
 Tue, 2 Feb 2021 15:35:09 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 36dhcwvdxy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Feb 2021 15:35:08 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 112FZ5Wq028590;
 Tue, 2 Feb 2021 15:35:07 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Feb 2021 07:35:04 -0800
Date: Tue, 2 Feb 2021 18:34:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH 1/2] staging: most: sound: add sanity check for function
 argument
Message-ID: <20210202153458.GT2696@kadam>
References: <1612265890-18246-1-git-send-email-christian.gromm@microchip.com>
 <1612265890-18246-2-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1612265890-18246-2-git-send-email-christian.gromm@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9882
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999 phishscore=0
 spamscore=0 suspectscore=0 malwarescore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102020106
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9882
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 lowpriorityscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 phishscore=0 mlxlogscore=999
 malwarescore=0 clxscore=1011 bulkscore=0 adultscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102020106
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
Cc: gregkh@linuxfoundation.org, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 02, 2021 at 12:38:09PM +0100, Christian Gromm wrote:
> This patch zero checks the function parameter 'bytes' before doing the
> subtraction to prevent memory corruption.
> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/staging/most/sound/sound.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
> index 3a1a590..953a4fe 100644
> --- a/drivers/staging/most/sound/sound.c
> +++ b/drivers/staging/most/sound/sound.c
> @@ -86,6 +86,8 @@ static void swap_copy24(u8 *dest, const u8 *source, unsigned int bytes)
>  {
>  	unsigned int i = 0;
>  
> +	if (!bytes)
> +		return;
>  	while (i < bytes - 2) {

If "bytes == 1" then this will cause problems still.  "bytes - 2"
becomes UINT_MAX.  I mean probably that's not possible but we may as
well make the sanity check if (bytes < 2) just for readability.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
