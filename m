Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 464B312F701
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jan 2020 12:12:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8925F868A8;
	Fri,  3 Jan 2020 11:12:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gb85GJorQi4e; Fri,  3 Jan 2020 11:12:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 85CFF81FB3;
	Fri,  3 Jan 2020 11:12:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 302B41BF376
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 11:12:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2D02D85EA5
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 11:12:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rdd6VGkQCxd9 for <devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 11:12:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A5BAA85D92
 for <devel@driverdev.osuosl.org>; Fri,  3 Jan 2020 11:12:03 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 003B9N14036712;
 Fri, 3 Jan 2020 11:12:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=Q2ZtbNUeWx9VC1CLuxFh4SS1GUH1jlPoGqC1V8zIE+E=;
 b=IeZLDhC3W2zf11gAoPzYf+wmHynFwSXx6OyLqSCOjAM493yhj578Vxuu8Dq/rNT/lD16
 Ul/Vvbiwrwhot5qa2QKCvGzc/g7x3hpQma9dE+0EKPtX0ZY5iCLoPXRV0REYTaVRdDqH
 qKLX/2AEzqzL38Rgohwer72CXanRnGkHK6Zgpw7jEr3RW3h5FzW2bNkhj8it1j0OuTnQ
 JV0pII40kmtfkCbliWJaxhg3iifMwbaCb5uQHeidt48M8E8qsodEscgbRYnR+TpOrUi4
 pxKdWsiBl4/3hDJ/lYZmRUyNLTuZfwBi3Xijek+BzmyZfcRilgujCT3mKymio30NX+dv rg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2x5ypqutre-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Jan 2020 11:12:02 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 003B8odA028534;
 Fri, 3 Jan 2020 11:10:01 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2x9jm7a7sn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Jan 2020 11:10:01 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 003B9wVW030971;
 Fri, 3 Jan 2020 11:09:58 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 Jan 2020 03:09:57 -0800
Date: Fri, 3 Jan 2020 14:09:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Malcolm Priestley <tvboxspy@gmail.com>
Subject: Re: [PATCH 2/5] staging: vt6656: correct return of vnt_init_registers.
Message-ID: <20200103110950.GE3911@kadam>
References: <072ec0b3-425f-277e-130c-1e3a116c90d6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <072ec0b3-425f-277e-130c-1e3a116c90d6@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9488
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001030106
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9488
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001030106
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
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Dec 20, 2019 at 09:15:09PM +0000, Malcolm Priestley wrote:
> The driver standard error returns remove bool false conditions.
> 
> Cc: stable <stable@vger.kernel.org> # v5.3+
> Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>

Fixes: 07ba60a15843 ("staging: vt6656: clean-up registers initialization error path")

The other part of that bug was fixed silently in commit 987d864a2363
("staging: vt6656: manage error path during device initialization").
I'm quite embarrassed that I didn't catch these during review...  It's
the obvious bug right?  "You have reversed the return values but not
updated any of the callers."  *Egg on my face*.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
