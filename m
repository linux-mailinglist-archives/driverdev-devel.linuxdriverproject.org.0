Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D76032E38A
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Mar 2021 09:22:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BFB4E84521;
	Fri,  5 Mar 2021 08:22:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SG5F2Co-nCp6; Fri,  5 Mar 2021 08:22:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F4DE8450C;
	Fri,  5 Mar 2021 08:22:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0349B1BF331
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 08:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E3DB96F589
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 08:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VQhBqWyP5TJf for <devel@linuxdriverproject.org>;
 Fri,  5 Mar 2021 08:22:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5A05D6F583
 for <devel@driverdev.osuosl.org>; Fri,  5 Mar 2021 08:22:39 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1258ExbL085139;
 Fri, 5 Mar 2021 08:22:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=QvKMRD5iNUl6kiX5MxFQrd+alqe/rtGHFgjL6zq2F60=;
 b=AGXGMKINI2Ha6H/US8jvyxW/EQCAyJUuLsm4yXokpW2+mPHV5qTo/+onJuMuRWDnmTQz
 FdG1wx2YkqlDE76zMCMGaUiEbaFyrI6Zl0hhGOKK6XK4oFgqgM0k+57kOVr6ZARpmpDW
 tIpz4FHM+0jgwl/8RQldEgKZZdcngdVnNgLceo83gKzR1iiuvu8MRTDAqBe6hLEZ70Mk
 eTqvYwO41tzjlVYspZVx//QA4S2SfWJfZsl4ZTTZUNAb6ow1JsRLq77XGNqbA2jkCDA0
 mk2ZlB+3Xpxf7cgJSJGca2TCAcI0amWWig/FA5JjK9sM6IOK8eU7ea9AHrzG7DW+CEdl BQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 36yeqn9kej-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 05 Mar 2021 08:22:38 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1258Ei4m065988;
 Fri, 5 Mar 2021 08:22:37 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 36yyuvy09s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 05 Mar 2021 08:22:36 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 1258MaxK032041;
 Fri, 5 Mar 2021 08:22:36 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 05 Mar 2021 00:22:35 -0800
Date: Fri, 5 Mar 2021 11:22:28 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Lee Gibson <leegib@gmail.com>
Subject: Re: [PATCH] staging: rtl8192e: Fix possible buffer overflow in
 _rtl92e_wx_set_scan
Message-ID: <20210305082228.GG2222@kadam>
References: <20210226114829.316980-1-leegib@gmail.com>
 <20210226134333.GA2087@kadam> <20210226140526.GG2222@kadam>
 <20210301132535.GR2087@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301132535.GR2087@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9913
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 spamscore=0 suspectscore=0
 mlxlogscore=999 bulkscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103050039
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9913
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 mlxlogscore=999 suspectscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 adultscore=0 mlxscore=0 phishscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103050039
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
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Actually, I looked through a bunch of these and they're mostly false
positives outside of staging.  I guess there are a few ways the ->ssid
can be changed.  Via netlink, from the network or from the an ioctl.

I still have a couple questions, but so far as I can see it's mostly the
ioctl which has problems.

I really want Smatch to be able to figure the netlink stuff...  That
should be doable.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
