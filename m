Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C98231F8FF
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 13:05:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EFBEF874A3;
	Fri, 19 Feb 2021 12:05:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fagt6209wKHI; Fri, 19 Feb 2021 12:05:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E2FE8749D;
	Fri, 19 Feb 2021 12:05:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 197441C1189
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 12:05:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 115358704A
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 12:05:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8qwYSLwdTpz9 for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 12:05:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C3CA18732A
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 12:05:18 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11JC5E0K169152;
 Fri, 19 Feb 2021 12:05:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=imsrzSSI/vvBI5ueuekT+d9U8MRYf+FdzBwlN96lu2Q=;
 b=pfU+gXbnZyi2ZqFhvGJkKXk1/sgWKgIa5EuI4IGCmU/FSKRIVgjNCRi7kEZjgII7K1gT
 XPfvLVM2JQCgGAF3cOPD0OBkMgfycnPSyQ96LUyBAcXbyIj6/2ENfkf1ulRDYykcWuG6
 LXSqzT5Nd0wkCrHUl1mCdsjIZo7AmxfEQWoFDFHRkzjq9RsvSNJFovYDopJVX9VeIrqQ
 ss5kHJ5IHl5o9urVczrZEpqAwvk7PjNoO5tW5zp3mpnYAXY/rHG528CZ6Zp2oifJvgBK
 /dl76C7MK2b2JUtA/iTWzqXgNAs6oxmnQirF4Z8uzDbjVvJBO6sPmbKSnDaCtGHaKw1X Dw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 36p66r99jb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Feb 2021 12:05:14 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11JC0GhI084445;
 Fri, 19 Feb 2021 12:05:12 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 36prq1tvbv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Feb 2021 12:05:12 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11JC5Acf004245;
 Fri, 19 Feb 2021 12:05:11 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 19 Feb 2021 04:05:10 -0800
Date: Fri, 19 Feb 2021 15:04:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Amrit Khera <amritkhera98@gmail.com>
Subject: Re: [PATCH v2] staging: android: Fix const keyword style issue in
 ashmem.c
Message-ID: <20210219120457.GY2087@kadam>
References: <20210219114237.5720-1-amritkhera98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219114237.5720-1-amritkhera98@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9899
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=999
 phishscore=0 adultscore=0 mlxscore=0 suspectscore=0 malwarescore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102190098
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9899
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 suspectscore=0
 impostorscore=0 priorityscore=1501 clxscore=1011 spamscore=0 mlxscore=0
 phishscore=0 malwarescore=0 bulkscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102190099
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, surenb@google.com, hridya@google.com,
 arve@android.com, joel@joelfernandes.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 19, 2021 at 05:12:38PM +0530, Amrit Khera wrote:
> This change fixes a checkpatch warning for "struct file_operations
> should normally be const".
> 
> Signed-off-by: Amrit Khera <amritkhera98@gmail.com>
> ---
> Changes in v2:
>  - Wrapped the commit description
>  - Build tested
     ^^^^^^^^^^^^
Heh.  Nope.

This breaks the build.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
