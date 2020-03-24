Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 049F11917A1
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Mar 2020 18:31:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1AAB087F07;
	Tue, 24 Mar 2020 17:31:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cz8w1owMLW42; Tue, 24 Mar 2020 17:31:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E15CA8362E;
	Tue, 24 Mar 2020 17:31:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 716741BF344
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 17:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6877E87E96
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 17:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ZPdg3P9Ku2y for <devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 17:31:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 07CAD8362E
 for <devel@driverdev.osuosl.org>; Tue, 24 Mar 2020 17:31:09 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02OHEvCk005056;
 Tue, 24 Mar 2020 17:31:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=wIeRi4ao8R5b/EkoPra/HUsoNLDCY4TwY0SR/Vhrc+0=;
 b=c5Q4svt25cC7qi2Iw+EfmWqN5wZPEMEtLNnFz28V0tf5c4+wbt4wMrflyu/zY4vMTQyl
 5t86WanbVUQe/wg8moPrvNrmj5amiVxmKvB7a7QsvwT5tijnnJoS1PJAoStyqNQYwl0v
 3u6oVIbp3jc/z5VZjopTnV1giOnD0Oy+Y+aRS8mqZO4TyympOCKfjFCXeoIu5AJh4pfk
 HvkjqMISeQyP1PPtv/tfANcypyjxyU7P8cc4jAJ7Yb6+YIBVQm+J7KegZBPaO0pfJGfo
 89riBNdBo/PkJ69auZQ1sxSJsMULa4kzTOI/VKherv5Xo6eS561PMns8DZK2bZdETUBg uw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2yx8ac2ng1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Mar 2020 17:31:06 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02OHJsXd076303;
 Tue, 24 Mar 2020 17:29:05 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2yxw931bkw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Mar 2020 17:29:05 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02OHT2qd012403;
 Tue, 24 Mar 2020 17:29:02 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 24 Mar 2020 10:29:01 -0700
Date: Tue, 24 Mar 2020 20:28:50 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: Re: [PATCH 0/2] staging: vt6656: change function from always
 returning 0 to void
Message-ID: <20200324172850.GG26299@kadam>
References: <20200324064545.1832227-1-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324064545.1832227-1-jbwyatt4@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9570
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0 bulkscore=0
 adultscore=0 mlxscore=0 malwarescore=0 mlxlogscore=937 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003240089
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9570
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1011
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 mlxscore=0 adultscore=0 phishscore=0 impostorscore=0 mlxlogscore=999
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003240089
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com,
 Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fold these two patches together so its just one patch.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
