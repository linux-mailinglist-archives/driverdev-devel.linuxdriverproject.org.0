Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE8B1BF440
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 11:38:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A83687804;
	Thu, 30 Apr 2020 09:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T4m9KAVIvY8w; Thu, 30 Apr 2020 09:38:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 60A83874F7;
	Thu, 30 Apr 2020 09:38:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B8871BF86C
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 09:38:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 27BE48860A
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 09:38:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c7Zcg8R1XSGB for <devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 09:38:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6BC6C88609
 for <devel@driverdev.osuosl.org>; Thu, 30 Apr 2020 09:38:47 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03U9bRQo146223;
 Thu, 30 Apr 2020 09:38:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=RUSYverzYQ9JpE4an/COyndDToRPSkdFo0Kb7DfKK5M=;
 b=VTfpLk/ImRHchhbFMQwxmtAvIW/DZ/csS2xqohj26xM6vGbUlbwdqyFRXe8DQ63xjRd2
 /sW/rIa4TSh5K8jgvObfjzCQiaOavVzYblqO0oVnY/NaIyAcIJ3269mMWADsTPJ1l2CQ
 ldPypm0+KzL1muqllpdjo8fglOZJWyHaauKaw2h5Pn8Xnf/OBjzew72VP7M5IQSJAyGV
 rxO5mRfF4bkRf0xRi66Qa4rUcC684K05OQfrxzECiEgUtDoBXXNd8qGyzfOAasXTbmmF
 sbhkjE8glkonCVC07G+8zgR26yPZZnHJbmdBlntwFQcTnUc3hog8kBcpsL/VgnZWPYKz yQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 30p2p0fv67-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 Apr 2020 09:38:46 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03U9bPJQ039878;
 Thu, 30 Apr 2020 09:38:46 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 30qtjwptvf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 Apr 2020 09:38:46 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03U9chKc024033;
 Thu, 30 Apr 2020 09:38:43 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 30 Apr 2020 02:38:42 -0700
Date: Thu, 30 Apr 2020 12:38:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Rylan Dmello <mail@rylan.coffee>
Subject: Re: [PATCH v2 2/7] staging: qlge: Remove gotos from
 ql_set_mac_addr_reg
Message-ID: <20200430093835.GT2014@kadam>
References: <cover.1588209862.git.mail@rylan.coffee>
 <a6f485e43eb55e8fdc64a7a346cb0419b55c3cb6.1588209862.git.mail@rylan.coffee>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a6f485e43eb55e8fdc64a7a346cb0419b55c3cb6.1588209862.git.mail@rylan.coffee>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9606
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0
 malwarescore=0 bulkscore=0 phishscore=0 mlxlogscore=999 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004300078
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9606
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 clxscore=1015
 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 mlxscore=0 suspectscore=0 mlxlogscore=999 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004300078
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 29, 2020 at 09:33:04PM -0400, Rylan Dmello wrote:
> As suggested by Joe Perches, this patch removes the 'exit' label
> from the ql_set_mac_addr_reg function and replaces the goto
> statements with break statements.
> 
> Signed-off-by: Rylan Dmello <mail@rylan.coffee>
> ---
>  drivers/staging/qlge/qlge_main.c | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> index 29610618c7c0..f2b4a54fc4c0 100644
> --- a/drivers/staging/qlge/qlge_main.c
> +++ b/drivers/staging/qlge/qlge_main.c
> @@ -336,22 +336,20 @@ static int ql_set_mac_addr_reg(struct ql_adapter *qdev, u8 *addr, u32 type,
>  
>  		status = ql_wait_reg_rdy(qdev, MAC_ADDR_IDX, MAC_ADDR_MW, 0);
>  		if (status)
> -			goto exit;
> +			break;

Just "return status".  A direct return is immediately clear but with a
break statement then you have to look down a bit and then scroll back.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
