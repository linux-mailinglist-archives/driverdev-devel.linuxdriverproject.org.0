Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECCC32777A
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 07:23:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CFD9C6066C;
	Mon,  1 Mar 2021 06:23:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xDFkdUxBhdzl; Mon,  1 Mar 2021 06:23:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1CDD86066B;
	Mon,  1 Mar 2021 06:23:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15BF61BF3BC
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 06:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0487F4F31D
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 06:23:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pHZ3jbLU6EuO for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 06:23:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F4764F31A
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 06:23:18 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1216F2iI066076;
 Mon, 1 Mar 2021 06:23:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=94V1zPtUuobxNqoS0Ro+KRCx183gIqYdwW7R0oRnJhU=;
 b=JBXMgdWgqzL9fl70cny8n49h2g4oW5QdE+BSCNppgeIytBZC2OvntuEVLQqO5gS9zRWx
 +TxbTo27BT3pvGMx6sy9L9WmuK7I1Q19f2JpYdjfopTd2eBNCMKYyguTkZoOgH2FUw4Z
 ITMMXK14uMNWyPlcoIsPAP4xl1vkrlzLnu1Sdueoo+N+M+hYlcDqHHHsGMvlfrr5XjDq
 aD2taU3KFgIX5kvBaGaER5WxcPowGmOrGy8veogFA+kk0TFgfK23aCZ63ouvtaP4V+aV
 agfMAQ61ugVgn63aHPh4qAc8PAwCNdQBnPIQs/20/aFsLhXLEcEaiHlKZReDEss4VMQB cg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 36ye1m2mb9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Mar 2021 06:23:16 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1216EsZk176857;
 Mon, 1 Mar 2021 06:23:15 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 36yyyx1e0b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 01 Mar 2021 06:23:15 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 1216NEJh030944;
 Mon, 1 Mar 2021 06:23:14 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sun, 28 Feb 2021 22:23:13 -0800
Date: Mon, 1 Mar 2021 09:23:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: chakravarthikulkarni <chakravarthikulkarni2021@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: Fixed indentation and coding style
Message-ID: <20210301062306.GJ2087@kadam>
References: <20210227220233.10259-1-chakravarthikulkarni2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210227220233.10259-1-chakravarthikulkarni2021@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9909
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxlogscore=999
 phishscore=0 bulkscore=0 mlxscore=0 spamscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103010051
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9909
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 priorityscore=1501
 mlxlogscore=999 impostorscore=0 suspectscore=0 adultscore=0 malwarescore=0
 mlxscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103010051
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Fox Chen <foxhlchen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 28, 2021 at 03:32:30AM +0530, chakravarthikulkarni wrote:
> @@ -795,14 +795,14 @@ struct RunInThread_param {
>  
>  
>  /*
> -
> -Result:
> -0x00: success
> -0x01: sucess, and check Response.
> -0x02: cmd ignored due to duplicated sequcne number
> -0x03: cmd dropped due to invalid cmd code
> -0x04: reserved.
> -
> +*
> +*Result:
> +*0x00: success
> +*0x01: sucess, and check Response.
> +*0x02: cmd ignored due to duplicated sequcne number
> +*0x03: cmd dropped due to invalid cmd code
> +*0x04: reserved.
> +*
>  */

This indenting style is wrong.  There should be a spaces around the '*'
character:

/*
 * Result:
 * 0x00: success
 * 0x01: sucess, and check Response.
 * 0x02: cmd ignored due to duplicated sequcne number
 * 0x03: cmd dropped due to invalid cmd code
 * 0x04: reserved.
 */

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
