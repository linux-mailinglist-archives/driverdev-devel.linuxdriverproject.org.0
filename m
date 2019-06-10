Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E693B781
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 16:35:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 901F120426;
	Mon, 10 Jun 2019 14:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iglAYzUpa4Xk; Mon, 10 Jun 2019 14:35:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 13D4720405;
	Mon, 10 Jun 2019 14:35:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E48F1BF41D
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 14:35:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5B1708632E
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 14:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xSLFQlDhGgcj for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 14:35:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E1C5F862B7
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 14:35:49 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5AETNbi096395;
 Mon, 10 Jun 2019 14:35:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=AreI3Oi5t2BK9yZ9fvqJm8n0iuLc5FNcr71UXydQQ4A=;
 b=IQNJubjfwEeOewYwiDKlbW98yCxrRZxsg8eJ286mCQaJbD4mAofdKhmBiR4RhF2dZUEk
 TICkZvpOPCcleI+we1ow+JbbOmjINiMV2X5rCDRtnughpjq/kGhVUfQ8VqCpNs9oPOV4
 j21bGybX5KyQCvGZixli/KpymHd9vC0p2ODpdq7xyGTeHEKQ6sYGX6J+0J12afwOu6o4
 1I/7I/mW7bnBv5+iw0Jp81ayCbnc5CU+FFtIchtPJ+e+IVzLNCdAyEyTSqAGrgIKu9Y6
 ia/0/7RqwpIM5FPH9/LBsEJuSPpQ+yu4RrPdXNU2Kx+D5TGNypsZ9vykvRXlU0sr95Ct zA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2t04etfaqc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 10 Jun 2019 14:35:46 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5AEWjsM157789;
 Mon, 10 Jun 2019 14:33:46 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2t1jpgwam6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 10 Jun 2019 14:33:46 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5AEXiea023021;
 Mon, 10 Jun 2019 14:33:44 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 10 Jun 2019 07:33:43 -0700
Date: Mon, 10 Jun 2019 17:33:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 1/2] staging: rtl8712: r8712_setdatarate_cmd(): Change
Message-ID: <20190610143333.GA1915@kadam>
References: <20190607140658.11932-1-nishkadg.linux@gmail.com>
 <20190607141548.GP31203@kadam>
 <98b587c9-df5b-0905-ab8f-69a4bae296b0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98b587c9-df5b-0905-ab8f-69a4bae296b0@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9284
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=563
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906100101
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9284
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=611 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906100101
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 valdis.kletnieks@vt.edu, tiny.windzz@gmail.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, colin.king@canonical.com,
 larry.finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 10, 2019 at 10:02:27AM +0530, Nishka Dasgupta wrote:
> On 07/06/19 7:45 PM, Dan Carpenter wrote:
> > Probably you sent this patch unintentionally.  The subject doesn't make
> > any sort of sense.  :P
> 
> So the problem with the subject line is that git send-email and vim (as
> configured on my laptop) tend to line-wrap even the subject line. Since I
> have two patches that do the same thing for different functions, I felt I
> should have the driver and the function name in the subject line (to avoid
> confusion between the patches and to allow for easy searching later). But
> that doesn't leave enough space in the subject line for "Change return
> values/type" or any other descriptive message. What should I do?
> 

I don't really care.

[PATCH] staging: rtl8712: clean up r8712_setdatarate_cmd() return type

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
