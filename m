Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0139731F68F
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 10:30:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 71D2A606F7
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 09:30:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0t1VKnSFwb0Q for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 09:30:06 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 36E38606F0; Fri, 19 Feb 2021 09:30:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7402E600BB;
	Fri, 19 Feb 2021 09:29:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6DF681BF853
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 09:29:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 55747605F3
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 09:29:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MHtlhCyYao-a for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 09:29:37 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id AE038606BD; Fri, 19 Feb 2021 09:29:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 81C256064C
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 09:29:36 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11J9OGcV136160;
 Fri, 19 Feb 2021 09:29:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=uEvDR6iEpvcnB2NVWUiZUFmWvogbhov45lrrnx2ri0g=;
 b=atzN55G24QS1hqwNj/djdC8BksvwywD7eX/pPiInGMNpMG7iYTP2vGunD0F50eN3q8Eq
 zOHMwvZBGz7PC0FnCK0qEqOAl6tFScE2ul6szAtZbSP5TjBxIUntw6GxJKoSoGu3Uaen
 sJLXfwJaW66if0uPWMJN/Vya0rslmqEQ5fqkXRqrHsZNa/aCWbwIitQoKal1dcxtI6l9
 uJJ598HKICxj1jR7/xLUHH+hYyflfgLhmSIYeIZv82JkBZtnUJbqpyxghBp+P0Gtxf0x
 DwcTLWOhAxTz8zgnSaACJMdqjb2pvhfvVoq9JdUZiaJ3mrHQRY2DJa0NdGumUJ3Zus32 wA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 36p7dnrq2p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Feb 2021 09:29:35 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11J9KVNw115305;
 Fri, 19 Feb 2021 09:29:34 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 36prbrxf3x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Feb 2021 09:29:33 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11J9TSv1016782;
 Fri, 19 Feb 2021 09:29:28 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 19 Feb 2021 01:29:28 -0800
Date: Fri, 19 Feb 2021 12:29:18 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nikolay Kyx <knv418@gmail.com>
Subject: Re: [PATCH v2] staging: fwserial: match alignment with open
 parenthesis
Message-ID: <20210219092918.GV2087@kadam>
References: <YC9zX1aIgj/sVnQY@kroah.com>
 <20210219090318.20795-1-knv418@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219090318.20795-1-knv418@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9899
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 mlxscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102190073
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9899
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 suspectscore=0 mlxscore=0
 phishscore=0 spamscore=0 adultscore=0 clxscore=1011 impostorscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102190073
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
 linux-kernel@vger.kernel.org, dinghao.liu@zju.edu.cn,
 adawesomeguy222@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 19, 2021 at 12:03:18PM +0300, Nikolay Kyx wrote:
> This patch fixes the following checkpatch.pl check:
> 
> CHECK: Alignment should match open parenthesis
> 
> in file fwserial.c
> 
> Additionally some style warnings remain valid here and could be fixed by
> another patch.
> 

Don't put comments like this in the git log, put them under the ---
cut off line.

> Signed-off-by: Nikolay Kyx <knv418@gmail.com>
> ---
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
