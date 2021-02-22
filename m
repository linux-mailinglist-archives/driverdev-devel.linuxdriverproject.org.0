Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90810321025
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Feb 2021 06:09:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC3B2859D6;
	Mon, 22 Feb 2021 05:08:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FQxoG94iLKog; Mon, 22 Feb 2021 05:08:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD814858FB;
	Mon, 22 Feb 2021 05:08:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 74E271BF3C2
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 05:08:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6348583518
 for <devel@linuxdriverproject.org>; Mon, 22 Feb 2021 05:08:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FGPZy6EyW7Mv for <devel@linuxdriverproject.org>;
 Mon, 22 Feb 2021 05:08:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 930C383410
 for <devel@driverdev.osuosl.org>; Mon, 22 Feb 2021 05:08:55 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11M58sl8168430;
 Mon, 22 Feb 2021 05:08:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=/m+7oTrzIn384y8FbVl58HcGUphAqAcWWQU34GsbqS0=;
 b=smpeLXjhTmG2QoG7uKYLk6zvXJa/vPNBsOf79yek1Q/3hCP1wrArUimYCIvfv6lJqxAF
 KvSIckX+GaLwz4bdzRS1hJ3XNLR4rEPQAipYwSEgnMoArLlInN2coMa5bjVp4u/ub3yz
 4DAC96ZxFkIykchGP7P7YUfvNIs7kOMjl8wiSOBH40JM39f3eqTtpK2prq0Nx+FJStCp
 GXxYwDzRpb5Iny3tpC/LJxsXg8NyU3BX8f7acpLmmDsezi/MTh4m63x5n148VczDwk0J
 uqnTT6mJ4H0h8KOMpveJ35Hp6zEjkFAXTL6HUlT5g62rWjnBOnbKenuhhefccB6QwyJZ lA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 36tqxbaebp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Feb 2021 05:08:54 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11M56esk082911;
 Mon, 22 Feb 2021 05:08:53 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 36uc0ktfpx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 22 Feb 2021 05:08:52 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11M58nG2019356;
 Mon, 22 Feb 2021 05:08:49 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sun, 21 Feb 2021 21:08:49 -0800
Date: Mon, 22 Feb 2021 08:08:41 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kurt Manucredo <fuzzybritches@protonmail.com>
Subject: Re: [PATCH v3] staging: rtl8723bs: fix code style comparison warning
Message-ID: <20210222050841.GC2087@kadam>
References: <20210219182331.8-1-fuzzybritches@protonmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210219182331.8-1-fuzzybritches@protonmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9902
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 adultscore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102220045
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9902
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 phishscore=0
 mlxlogscore=999 malwarescore=0 clxscore=1015 suspectscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102220045
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
Cc: devel@driverdev.osuosl.org, tiwai@suse.de, gregkh@linuxfoundation.org,
 d.straghkov@ispras.ru, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 19, 2021 at 06:23:54PM +0000, Kurt Manucredo wrote:
> 
> 
> checkpatch gives the following WARNING:
> WARNING: Comparisons should place the constant on the right side of the test
> this patch fixes the coding style warning.
> 
> Signed-off-by: Kurt Manucredo <fuzzybritches@protonmail.com>
> ---

Looks okay to me.  Thanks!

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
