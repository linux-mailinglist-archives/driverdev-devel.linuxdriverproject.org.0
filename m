Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3C92184CD
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Jul 2020 12:19:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4557187C22;
	Wed,  8 Jul 2020 10:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IaZd+wtCGt4M; Wed,  8 Jul 2020 10:19:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7922087E6E;
	Wed,  8 Jul 2020 10:19:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38D851BF863
 for <devel@linuxdriverproject.org>; Wed,  8 Jul 2020 10:19:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 05C1487657
 for <devel@linuxdriverproject.org>; Wed,  8 Jul 2020 10:19:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nD0vGFofq+u3 for <devel@linuxdriverproject.org>;
 Wed,  8 Jul 2020 10:19:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6670E87626
 for <devel@driverdev.osuosl.org>; Wed,  8 Jul 2020 10:19:17 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 068AChKj044749;
 Wed, 8 Jul 2020 10:19:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=/BlpZ6hzTwlUibKA0cSfCKXBgMHk0GrIHKQ8DTOACvA=;
 b=iS4sCjohEWXxeEpkY7s3DGlC9ZnGvgDWKWmVhYuq2ZNgseFO2AGs/aLTvTmYqbGk5LT4
 Kc1xjBfRDDEDd7ogF9IKB4joLrx0iK8dhx4y/LrrjiyjNP2a6SsHKbOe3vNbdrS3SdNu
 XIfdM/Ufa3DMAuZSOViAl1zqvQR4OMLTkb8N45ZY4fn3AT6CA9tss8Rh1PtyDSyNmz5Q
 iG9k4WC55SuFMywImc15EKmQG7ac+DG2zCLmdnpXVx+zoKesu85fSy2aQrHDQ6/zDDl5
 YgoQEbWEBGs/WYku0EfsSRZ8T3kgJcz3X0AAKFDIL1XTEAzsSO1XeKRCecVMVWxC7Yho cg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 322kv6hfxk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 08 Jul 2020 10:19:08 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 068AEHhY124906;
 Wed, 8 Jul 2020 10:19:07 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 3233pypju6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 08 Jul 2020 10:19:07 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 068AJ5uA004732;
 Wed, 8 Jul 2020 10:19:05 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 08 Jul 2020 03:19:05 -0700
Date: Wed, 8 Jul 2020 13:18:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones: STAGING - NVIDIA
 COMPLIANT EMBEDDED CONTROLLER INTERFACE (nvec)
Message-ID: <20200708101858.GL2549@kadam>
References: <20200708091428.13554-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200708091428.13554-1-grandmaster@al2klimov.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9675
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0 spamscore=0
 mlxscore=0 mlxlogscore=900 bulkscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2007080074
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9675
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 mlxlogscore=901 phishscore=0 spamscore=0
 priorityscore=1501 clxscore=1011 impostorscore=0 mlxscore=0 adultscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2007080074
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
 linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
 ac100@lists.launchpad.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

You need to have a subsystem prefix in the subject.

[PATCH] Staging: nvec: Replace HTTP links with HTTPS

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
