Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F811BEC7
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 22:37:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 818FA85D72;
	Mon, 13 May 2019 20:37:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C2r8RItKJB1w; Mon, 13 May 2019 20:37:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 65E7585C47;
	Mon, 13 May 2019 20:37:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6715A1BF3ED
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 20:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6442185D56
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 20:37:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QZx2XoGSb-7H for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 20:37:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4C46085C47
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 20:37:37 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4DKYT3G108825;
 Mon, 13 May 2019 20:37:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=dRy452XrtYMJhs3/vOJwT3qNDXx4cMcNTgRiA0IpSNY=;
 b=RSBZFyDM+hJQfnm+8gBZpRLocbfKozk+d+g+5u8xtNFNJ2Kp7W9UR2gai0Lq0Ix+IFYS
 yJ2IlCg2IATvcrCFCOamkrV9stytpbmVG4wBwELWPdhU4CD8xkfyPsRxaEZn7u6Ktre5
 cyzHi70bdK70doFFbG7VZwOBE2QufY542cgpt5xIarxBz3SkwJpLC9W9EtN8WTnEjANU
 dkd51oAitC6q0/Vv714V+Ys5/pdL+hRI/va5SZvrAxUUpr49ccOEzIqMqVgbyFkHyUZp
 EaqF2x83yGfAC29T1uAs1uJPbJez5aSWR4HouGCP7pJtC2Aa9K0Z1pQlgJr0c/X/wRiH eA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2sdntthmye-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 May 2019 20:37:36 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4DKZZTl144354;
 Mon, 13 May 2019 20:35:36 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2sdnqj66e1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 May 2019 20:35:35 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4DKZVKl005370;
 Mon, 13 May 2019 20:35:31 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 13 May 2019 13:35:30 -0700
Date: Mon, 13 May 2019 23:35:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Puranjay Mohan <puranjay12@gmail.com>
Subject: Re: [PATCH 5/5] Staging: rtl8192u: ieee80211: Use !x in place of
 NULL comparison
Message-ID: <20190513203525.GC31203@kadam>
References: <20190513194116.GA30887@arch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513194116.GA30887@arch>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9256
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=823
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905130138
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9256
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=872 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905130138
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 14, 2019 at 01:11:21AM +0530, Puranjay Mohan wrote:
> @@ -2856,7 +2856,7 @@ static int ieee80211_wpa_set_encryption(struct ieee80211_device *ieee,
>  		goto done;
>  	}
>  
> -	if (*crypt == NULL || (*crypt)->ops != ops) {
> +	if (!(*crypt) || (*crypt)->ops != ops) {
             ^      ^
Please don't add these parentheses.

>  		struct ieee80211_crypt_data *new_crypt;
>  
>  		ieee80211_crypt_delayed_deinit(ieee, crypt);

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
