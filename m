Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D833525393
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 17:15:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3747C87B9B;
	Tue, 21 May 2019 15:15:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XColi4vLPLHP; Tue, 21 May 2019 15:15:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6CC1887B5E;
	Tue, 21 May 2019 15:15:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6D8151BF4DA
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 15:14:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6ACA8267EF
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 15:14:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L-kZJSj16Gxs for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 15:14:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id E0F6823735
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 15:14:58 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4LF1qQ1087594;
 Tue, 21 May 2019 15:14:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=Uqv3nKXWWkJ9B0A+oT8QlIR1q8DM2+THe+i7fy28Bj4=;
 b=ITfJiVjadmq6ClilKxKxon+dtJaovaW0GkxecG/dv90DcwQUhhq0gyY3qsDwBe2kMmWj
 3yho1AgjU+mvWW3hrcd++ohKN/QHCfNcDYWZn3ZKeGyLQ8d1izdfOhny9qLzLTd4LiRS
 T9vcWliYo/Pu7OKatoilij9FlRp96r4WF62yPOimXY4Gg8dYi6GdCD4cTlD8metInNXS
 FhiKVHIr5OU4f9QQFzVGZeXrgR+7xA9LZewti0/fpP/5b9bGediB2FXBuxfqLeHN/CXJ
 D+gXJ5gar9Rg2cMK6VULlhoogzaKhuyhUQQVGYdTG08HrsOA4MYonzb2V6xTGMgf+8YM 6Q== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2sj9fte5h8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 May 2019 15:14:57 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4LFDUqm112774;
 Tue, 21 May 2019 15:14:57 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2sks1y8sw0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 May 2019 15:14:56 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4LFEq2e002400;
 Tue, 21 May 2019 15:14:52 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 21 May 2019 15:14:51 +0000
Date: Tue, 21 May 2019 18:14:44 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Tianzheng Li <ltz0302@gmail.com>
Subject: Re: [PATCH] staging/gasket: Fix string split
Message-ID: <20190521151444.GN31203@kadam>
References: <20190521150728.25501-1-ltz0302@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521150728.25501-1-ltz0302@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9264
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=799
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905210094
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9264
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=851 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905210094
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
Cc: devel@driverdev.osuosl.org, zhangjie.cnde@gmail.com,
 linux-kernel@i4.cs.fau.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, rspringer@google.com, toddpoynor@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 05:07:28PM +0200, Tianzheng Li wrote:
> This patch removes unnecessary quoted string splits.
> 
> Signed-off-by: Tianzheng Li <ltz0302@gmail.com>
> Signed-off-by: Jie Zhang <zhangjie.cnde@gmail.com>

What do the two sign off mean here?  What did Jie Zhang do?  Who wrote
this patch?

Co-developed-by?  Reviewed-by?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
