Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 396E11103FA
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Dec 2019 19:07:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 945C886D7D;
	Tue,  3 Dec 2019 18:07:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VG_BmQ-6bzb5; Tue,  3 Dec 2019 18:07:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7F03E86CD0;
	Tue,  3 Dec 2019 18:07:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57CE01BF57C
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 18:07:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 500A8203D6
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 18:07:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kEHZwPynUs3S for <devel@linuxdriverproject.org>;
 Tue,  3 Dec 2019 18:07:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 314631FD21
 for <devel@driverdev.osuosl.org>; Tue,  3 Dec 2019 18:07:06 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB3I6AK5103785;
 Tue, 3 Dec 2019 18:07:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=YB/3Nx/42Ly/gNK4yf2ytMhov5sVxAa6o33DZ3H/rjw=;
 b=lgcd50B+XDaXNFp/Ube5EHT2s+ZnTbn/BLjc3zZW5mms3kNVv++SJjRIxkHkfmIuQQdJ
 x56aMFLY5Ti2FwahTrzOEmZri/pxynYNt66LxsqnVo4Rh2s10LyPVsdkPHk7hCS9RAGH
 Yb6A4SBQyGJlQQj5BPso5I7p3SuReEzjyTgqwVN6Uuky1ZXrgrXyt5HP44hydqnqgslV
 HN3oSnwIYzhBB3YQxzQ0+rOi6sk3yEKCNLcu1+z+S4PNEYYQ3b0kQCZV8XUcYKXSEh0k
 HzcGkWtP47rLuUgO0zRDbj9I5mWaPRxnee8midF76D2az449j9Ug93iPi1DrrMWPiFig Lw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2wkfuu9n2s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Dec 2019 18:07:05 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB3I5S6g186458;
 Tue, 3 Dec 2019 18:07:04 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2wn4qqbydw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Dec 2019 18:07:04 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xB3I6wIa019875;
 Tue, 3 Dec 2019 18:06:59 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 03 Dec 2019 10:06:58 -0800
Date: Tue, 3 Dec 2019 21:06:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sven Leykauf <sven_leykauf1@web.de>
Subject: Re: [PATCH 1/2] pi433: Fix indentation according to coding style
Message-ID: <20191203180630.GC1765@kadam>
References: <20191203175447.28765-1-sven_leykauf1@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203175447.28765-1-sven_leykauf1@web.de>
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
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
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

On Tue, Dec 03, 2019 at 06:54:47PM +0100, Sven Leykauf wrote:
> Fix indentation so that no line exceeds the 80 character border.
> 
> Co-developed-by: Daniel Bauer <daniel.j.bauer@fau.de>
> Signed-off-by: Daniel Bauer <daniel.j.bauer@fau.de>
> Signed-off-by: Sven Leykauf <sven_leykauf1@web.de>
> ---
>  drivers/staging/pi433/rf69.c | 28 ++++++++++++++--------------
>  1 file changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
> index 7d86bb8be245..6b13f92028c7 100644
> --- a/drivers/staging/pi433/rf69.c
> +++ b/drivers/staging/pi433/rf69.c
> @@ -176,20 +176,20 @@ int rf69_set_modulation_shaping(struct spi_device *spi,
>  		switch (mod_shaping) {
>  		case SHAPING_OFF:
>  			return rf69_read_mod_write(spi, REG_DATAMODUL,
> -						   MASK_DATAMODUL_MODULATION_SHAPE,
> -						   DATAMODUL_MODULATION_SHAPE_NONE);
> +					MASK_DATAMODUL_MODULATION_SHAPE,
> +					DATAMODUL_MODULATION_SHAPE_NONE);

It was a choice to align with the ( or be less than 80 characters and
the original author decided to go over 80 characters...  They're both
equally valid options, but we generally let the original author choose
pick which one they prefer.  So just leave it as is.

There are better ways to write this function which avoid both problems...

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
