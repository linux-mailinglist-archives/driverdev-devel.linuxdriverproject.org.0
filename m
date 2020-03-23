Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B12018F050
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 08:35:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F109E869F2;
	Mon, 23 Mar 2020 07:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vjHnnsbyEkT6; Mon, 23 Mar 2020 07:35:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 59055868F3;
	Mon, 23 Mar 2020 07:35:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6C3611BF2C9
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 07:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6705187CD6
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 07:35:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yThSi3x6ckMX for <devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 07:35:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1DE1587CB0
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 07:35:32 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02N7TCJG196590;
 Mon, 23 Mar 2020 07:35:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=hX+vs80DDeOiro/tdn2Q9wyWfWoExexS44f4rTOFClM=;
 b=lLQzg5gddQjDpe/Z2V7KPmCdKmwN9wdJ2mYPY4HImmaInH66WsBxMo/5pxPgWDRYQKxe
 e5MQlk+1IOHlXhfXkhE6hYGSqe5fnL6qNAUf0M5+H8AcuIHKxMawH+KErCIq5Z5IaV+X
 wSnyj0wQQl5W1gqP0qcKf21aEr8KWtSntqZZnY8LOkjGRp9j+PeRaDw4MBJmeojcUF4y
 9qFFnndHdo2kwLl0STeAkOqBPI2Hw7bjCTCrIgHRWYMSKbzazLpRdoMlZe7EaU4GyXGK
 hRgET7BHJptsoYhDkbGcD8+YPlWrwaY9+rf1owS+FiuiwMypIHNt3oOPXTork0waLpBc ng== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2ywabqvy8n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Mar 2020 07:35:29 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02N7QqSn162743;
 Mon, 23 Mar 2020 07:35:28 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2ywvdbjhqv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Mar 2020 07:35:28 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02N7ZRTx029793;
 Mon, 23 Mar 2020 07:35:27 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 23 Mar 2020 00:35:26 -0700
Date: Mon, 23 Mar 2020 10:35:18 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Use BIT() macro instead of hex value
Message-ID: <20200323073518.GK4650@kadam>
References: <20200320171056.7841-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320171056.7841-1-oscar.carter@gmx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9568
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 bulkscore=0 spamscore=0
 suspectscore=0 mlxscore=0 phishscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003230044
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9568
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 clxscore=1011 adultscore=0 mlxscore=0 mlxlogscore=999 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003230044
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mukesh Ojha <mojha@codeaurora.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Ojaswin Mujoo <ojaswin25111998@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 20, 2020 at 06:10:56PM +0100, Oscar Carter wrote:
> -#define RSR_ADDRBROAD       0x80
> -#define RSR_ADDRMULTI       0x40
> +#define RSR_ADDRBROAD       BIT(7)
> +#define RSR_ADDRMULTI       BIT(6)
>  #define RSR_ADDRUNI         0x00
> -#define RSR_IVLDTYP         0x20        /* invalid packet type */
> -#define RSR_IVLDLEN         0x10        /* invalid len (> 2312 byte) */
> -#define RSR_BSSIDOK         0x08
> -#define RSR_CRCOK           0x04
> -#define RSR_BCNSSIDOK       0x02
> -#define RSR_ADDROK          0x01
> +#define RSR_IVLDTYP         BIT(5)	/* invalid packet type */
> +#define RSR_IVLDLEN         BIT(4)	/* invalid len (> 2312 byte) */
> +#define RSR_BSSIDOK         BIT(3)
> +#define RSR_CRCOK           BIT(2)
> +#define RSR_BCNSSIDOK       BIT(1)
> +#define RSR_ADDROK          BIT(0)

I like these ones because I do think the new version is more clear
now.

>  /* Bits in the EnhanceCFG_0 register */
>  #define EnCFG_BBType_a		0x00
> -#define EnCFG_BBType_b		0x01
> -#define EnCFG_BBType_g		0x02
> -#define EnCFG_BBType_MASK	0x03
> -#define EnCFG_ProtectMd		0x20
> +#define EnCFG_BBType_b		BIT(0)
> +#define EnCFG_BBType_g		BIT(1)
> +#define EnCFG_BBType_MASK	(BIT(0) | BIT(1))
> +#define EnCFG_ProtectMd		BIT(5)

Probably EnCFG_BBType_MASK should be defined using the other defines.

#define EnCFG_BBType_MASK (EnCFG_BBType_b | EnCFG_BBType_g)

Otherwise it looks good.  Can you change that one thing and then add
my Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
