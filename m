Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F141BEC5
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 22:34:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 85A1C85D55;
	Mon, 13 May 2019 20:34:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NdMZGsYnvRw9; Mon, 13 May 2019 20:34:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 411D685D59;
	Mon, 13 May 2019 20:34:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D7DE1BF3D8
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 20:34:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8A55D86180
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 20:34:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5T1CYx8v3gss for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 20:34:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E58EA85D5F
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 20:34:00 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4DKTSjb116945;
 Mon, 13 May 2019 20:33:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=na3yhUJfIzO4nqwgnSRlfv/QuonXH7TiUYfZRjjG4Ok=;
 b=KFybUeD2G2QHqtE1vg6ZSJB0eXGaX7QQzzFSjyyAInsy7Tl4vATj1jfs//HIMmmA1VSX
 HPX+/1IGHTcP0BoegUvOppZ2ipStKiJT5IFzi6esoGciJLS2zr7x53l7WcqBRGUII0JZ
 kPaxUo+XjHV/nEKvss2i/3KoimhhTnZ/8y5lWKXz24ACmHkKzeya/Y98L2GP7vdjFlnU
 W8G5dxXLhU5ao9mSp7oeOJWhKFuvOo7IN8nxlT4srcdjAypkU49+h3ZStLqkfzQoT7Dm
 o02qkADp7KJvxTtE7+B6BByeMPFtSu3qA3z3lZCmQ36QQYHMbdWsdHhKuHH6RWl8SzLU 5g== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2sdq1q9g8h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 May 2019 20:33:59 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4DKXLFB153300;
 Mon, 13 May 2019 20:33:59 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2sf3cmvj3u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 May 2019 20:33:59 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4DKXwi2028119;
 Mon, 13 May 2019 20:33:58 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 13 May 2019 13:33:58 -0700
Date: Mon, 13 May 2019 23:33:52 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Puranjay Mohan <puranjay12@gmail.com>
Subject: Re: [PATCH 3/5] Staging: rtl8192u: ieee80211: Fix coding style errors
Message-ID: <20190513203352.GB31203@kadam>
References: <20190513193946.GA30491@arch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513193946.GA30491@arch>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9256
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=798
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905130138
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9256
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=847 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905130137
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

On Tue, May 14, 2019 at 01:09:50AM +0530, Puranjay Mohan wrote:
> @@ -746,12 +730,12 @@ int ieee80211_xmit(struct sk_buff *skb, struct net_device *dev)
>  		txb->payload_size = __cpu_to_le16(bytes);
>  
>  		//if (ieee->current_network.QoS_Enable)
> -		if(qos_actived)
> -		{
> +		if (qos_actived)
> +
>  			txb->queue_index = UP2AC(skb->priority);

No blank line here either.

> -		} else {
> +		else
>  			txb->queue_index = WME_AC_BK;
> -		}
> +

Or here.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
