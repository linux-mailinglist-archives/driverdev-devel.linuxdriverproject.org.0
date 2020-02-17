Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 558A916103F
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Feb 2020 11:40:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC55E870A1;
	Mon, 17 Feb 2020 10:40:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XVyXu-aOb0no; Mon, 17 Feb 2020 10:40:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E050865CD;
	Mon, 17 Feb 2020 10:40:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A66191BF2BD
 for <devel@linuxdriverproject.org>; Mon, 17 Feb 2020 10:40:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A32B68504B
 for <devel@linuxdriverproject.org>; Mon, 17 Feb 2020 10:40:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xI1mTS3GlnrF for <devel@linuxdriverproject.org>;
 Mon, 17 Feb 2020 10:40:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2B5848502C
 for <devel@driverdev.osuosl.org>; Mon, 17 Feb 2020 10:40:38 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01HAWtMG039115;
 Mon, 17 Feb 2020 10:40:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=AssWYkkfUk6ufkPD923UKC0grtFJ43QUY44ABFcu9DA=;
 b=mRfiY8dc2th25r5JQPh1J4SM8cudGAwvj1dCe/erhE/lEHm6v1nZOo29QWrk6dJ9L87M
 +7EY2yadWzfF0JWxp08I0opK/iT46BIevSvb+3C/ytbOEoxEFENP/vfyhr30RomBPoqx
 kbG0Y9I+W800O8+mRB+0x8xbez7CiCVV0+lrkCv+9nV640AaQwywaA0Vb5sayhZr4K+Q
 hZkXtQ0rm10hIYn+R/aQWNYe2DeAjD2iqhxLMImWDm4TnNNks8qmaatHXV8UFcHmsrJT
 mBsqIah5FiOFpplSHmtTQpCeBlfNXGly4KinYwFxziEFk5A8W5p+RUphz1m896PJgJgQ pw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2y7aq5jmnr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Feb 2020 10:40:37 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01HAXcYK057880;
 Mon, 17 Feb 2020 10:40:36 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2y6t4ftdau-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 17 Feb 2020 10:40:36 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01HAeXm6023347;
 Mon, 17 Feb 2020 10:40:34 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 17 Feb 2020 02:40:33 -0800
Date: Mon, 17 Feb 2020 13:40:26 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH] staging: vc04_services: Fix wrong early return in
 next_service_by_instance()
Message-ID: <20200217104026.GB19641@kadam>
References: <20200213194001.130110-1-marcgonzalez@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213194001.130110-1-marcgonzalez@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9533
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0
 mlxlogscore=941 phishscore=0 mlxscore=0 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002170092
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9533
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 impostorscore=0 adultscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 clxscore=1015 bulkscore=0
 phishscore=0 mlxlogscore=999 lowpriorityscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002170092
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
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 13, 2020 at 02:40:01PM -0500, Marcelo Diop-Gonzalez wrote:
> If kref_get_unless_zero() fails, we should keep looking for the
> next service, since the callers of this function expect that a NULL
> return value means there are no more.
> 
> Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> ---

Please use a Fixes tag.

Fixes: a2203cfe0d84 ("staging: vc04_services: don't increment service refcount when it's not needed")

That way we know it doesn't need to be backported.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
