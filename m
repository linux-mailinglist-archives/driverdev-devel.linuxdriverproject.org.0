Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6599220C2A2
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 17:07:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4B90086EB7;
	Sat, 27 Jun 2020 15:07:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vwPCWtjMlRAv; Sat, 27 Jun 2020 15:07:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 89F1B86E91;
	Sat, 27 Jun 2020 15:07:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 980921BF362
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 15:07:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 943C3880E2
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 15:07:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oFK5C8DvBV3N for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 15:07:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E6E0D880DD
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 15:07:00 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05REmxM3121084;
 Sat, 27 Jun 2020 15:06:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=xd0ynxbdzzQKIPV6JUPT2LN4YsElXveS8lfI402jTu0=;
 b=XhSDSXK5mh8WgoekQxixsdxcHg48+ZnUj6vKpsd0Cy1pSreCyU/0sxQ2WN+d1FWOBiRH
 BcUkpeKdhfPH+JwUJTm3AuZ6+4j+Y/A9XC6oWimO3GJpztH8s2vLffVmmPYgn3RMmziC
 tSwSGdSQr8mysoiXfRpHZYYRyEirVn/YcjhfnAHHhQxXTtsz9ep8hu5dggopA2qRBP4+
 1jHRTLon09/7WPz4YWKJV64Xgt22Pqqu73TQxdL1655xQEaU/WL1imHrco492IsoGZXI
 EOnN9pIY/EP/n6fP2jkAhelw6zRBGVbdUpGyZ1h4GEecAf1FH3MPsMtUbOVhdWA7OsK4 5Q== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 31wx2m92qk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sat, 27 Jun 2020 15:06:59 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05RElYuP143906;
 Sat, 27 Jun 2020 15:06:59 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 31wu7s6bfd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 27 Jun 2020 15:06:59 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05RF6v4O002939;
 Sat, 27 Jun 2020 15:06:57 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 27 Jun 2020 08:06:57 -0700
Date: Sat, 27 Jun 2020 18:06:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v2 0/4] staging: qlge: coding style fix for the qlge driver
Message-ID: <20200627150651.GJ2549@kadam>
References: <20200627145857.15926-1-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200627145857.15926-1-coiby.xu@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9664
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 bulkscore=0 spamscore=0
 malwarescore=0 adultscore=0 mlxscore=0 suspectscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006270108
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9664
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=999 clxscore=1015 adultscore=0
 impostorscore=0 cotscore=-2147483648 priorityscore=1501 malwarescore=0
 phishscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006270108
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
Cc: devel@driverdev.osuosl.org, joe@perches.com, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Looks Good!  Thanks.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
