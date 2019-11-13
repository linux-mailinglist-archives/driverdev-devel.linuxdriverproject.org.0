Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D36CCFB718
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Nov 2019 19:18:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 35C8686890;
	Wed, 13 Nov 2019 18:18:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fOP71X_K8tGs; Wed, 13 Nov 2019 18:18:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31E55862C1;
	Wed, 13 Nov 2019 18:18:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 987DA1BF41D
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 18:17:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9201C22739
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 18:17:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YgJQH8Rbl5MI for <devel@linuxdriverproject.org>;
 Wed, 13 Nov 2019 18:17:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id E15DE22744
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 18:17:58 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xADI977H080954;
 Wed, 13 Nov 2019 18:17:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=s/C4gMF2RVVPDFj1GueO16cvWPMCqzc61gY61lcszxg=;
 b=NW+K0XRzODndaZ3Hv15Ezi+g9Rs/CPwCsb35ZEAUHlRiywc3z0fzNXLZNoIZJC4lqDMZ
 cs5KF1Zbyy62EDpq9u3yfbGCVanodJI32f0k9yG3Q+9hn6yp6bW2Vcv2TNfz9Y/HXLt4
 +O5Zx5oS3WixxSLNv0Fg4QN1fevyJkro7opn7V7u2DWLbAdQGAuA5mA3jLA5Meyt0Mhn
 m030bgyp3W9MJ8Wwxw6mazgYz2fiwpsQtpCji8hR4ffmwB/buvQKQ4OYiOtEbz0Miv6T
 NW2Nj3UOBKp4DZvuSBK2LSN1RNLX3qoUvd2v1nrlZQla7vY6v4PhdNxirYh3VQAzZFsG nQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2w5p3qx825-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 13 Nov 2019 18:17:56 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xADIDhNM099137;
 Wed, 13 Nov 2019 18:17:56 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2w8g17xw92-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 13 Nov 2019 18:17:56 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xADIHqvA001618;
 Wed, 13 Nov 2019 18:17:53 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 13 Nov 2019 10:17:52 -0800
Date: Wed, 13 Nov 2019 21:17:42 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Move retrieval of rpi_firmware to
 vchiq_platform_init()
Message-ID: <20191113181742.GB3284@kadam>
References: <cover.1573482698.git.marcgonzalez@google.com>
 <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9440
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1910280000 definitions=main-1911130157
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9440
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1910280000
 definitions=main-1911130157
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
 linux-rpi-kernel@lists.infradead.org, wahrenst@gmx.net, eric@anholt.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 11, 2019 at 12:14:23PM -0500, Marcelo Diop-Gonzalez wrote:
> This allows the removal of the struct rpi_firmware* member
> from struct vchiq_drvdata.
> 

Please don't start your commit message in the middle of a sentence.

It looks like this:
https://marc.info/?l=linux-driver-devel&m=157349280800959&w=2


> Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
