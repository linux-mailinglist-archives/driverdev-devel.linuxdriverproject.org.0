Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 283F811041D
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Dec 2019 19:14:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5EFDF86D17;
	Tue,  3 Dec 2019 18:14:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pvW-rvRNz2r7; Tue,  3 Dec 2019 18:14:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B0BF86582;
	Tue,  3 Dec 2019 18:14:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D3531BF57C
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 18:14:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 33E3E8783C
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 18:14:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id df1ZLk6lsR7Y for <devel@linuxdriverproject.org>;
 Tue,  3 Dec 2019 18:14:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1B7428761E
 for <devel@driverdev.osuosl.org>; Tue,  3 Dec 2019 18:14:35 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB3IDQR6110432;
 Tue, 3 Dec 2019 18:14:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=h3iNrYNQomixFd71S0bmafh8nNRMGU9MW2gNU6yB8WQ=;
 b=Z94Pz5ZU8HmA7sgDY48v/jiABS0SSklOZ8BoucQzIZubMAZ2jPiEwc7EVhICieVCMI/z
 BG+D5LG5X+e5YAtJnw013Mr5AZziind5XbJ0llB8QFYDPMO/mNqbJOFqcZUG7MiMMqgq
 AQ6ziCvtCZOMyOjVoYufMC7nlnhcVHLtSQf6UqWhFOf8MKlcNzz+mJdqclMOBkidHx70
 L8HnFTi5oW8Khu/iweKk5T9qYTKaJU8/Vv5UMRV9+lOv557qHFhsiNe9xvuG2+a4UiCP
 X+c39+5zr8WG2JX3Epjn0AWdTcnY2hkPKfwLH1AdqEi+jyzd6p1W1MZo40uds86SkQyZ Jg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2wkfuu9pfn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Dec 2019 18:14:33 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB3I4LlZ001181;
 Tue, 3 Dec 2019 18:14:32 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2wn8k30vrf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Dec 2019 18:14:32 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xB3IETv7028275;
 Tue, 3 Dec 2019 18:14:29 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 03 Dec 2019 10:14:28 -0800
Date: Tue, 3 Dec 2019 21:14:17 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sven Leykauf <sven_leykauf1@web.de>
Subject: Re: [PATCH 2/2] pi433: Fix indentation according to coding style
Message-ID: <20191203181417.GD1765@kadam>
References: <20191203175447.28765-1-sven_leykauf1@web.de>
 <20191203175447.28765-2-sven_leykauf1@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203175447.28765-2-sven_leykauf1@web.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9460
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912030135
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9460
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912030135
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
Cc: devel@driverdev.osuosl.org, Daniel Bauer <daniel.j.bauer@fau.de>,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

You can't have two patches with the same subject.

On Tue, Dec 03, 2019 at 06:54:49PM +0100, Sven Leykauf wrote:
> Fix indentation so that no line exceeds the 80 character border.
> 
> Put the return command one line under the default case, so it looks
> better.
> 
> Co-developed-by: Daniel Bauer <daniel.j.bauer@fau.de>
> Signed-off-by: Daniel Bauer <daniel.j.bauer@fau.de>
> Signed-off-by: Sven Leykauf <sven_leykauf1@web.de>
> ---
>  drivers/staging/pi433/rf69.c | 56 ++++++++++++++++++++++++------------
>  1 file changed, 37 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
> index 6b13f92028c7..6cdd46682aa9 100644
> --- a/drivers/staging/pi433/rf69.c
> +++ b/drivers/staging/pi433/rf69.c
> @@ -596,42 +596,60 @@ bool rf69_get_flag(struct spi_device *spi, enum flag flag)
>  {
>  	switch (flag) {
>  	case mode_switch_completed:
> -		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_MODE_READY);
> +		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
> +				MASK_IRQFLAGS1_MODE_READY);


This isn't how we align things.  The ( and the next line should match.

		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
			MASK_IRQFLAGS1_MODE_READY);

But actually the original is probably better than the new version so
lets just leave it as is.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
