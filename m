Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2B414D85A
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jan 2020 10:42:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 554AD87E0B;
	Thu, 30 Jan 2020 09:42:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lWCtiAQKaZ9k; Thu, 30 Jan 2020 09:42:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 49A1A87B4F;
	Thu, 30 Jan 2020 09:42:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AF4F91BF44C
 for <devel@linuxdriverproject.org>; Thu, 30 Jan 2020 09:42:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AA49183542
 for <devel@linuxdriverproject.org>; Thu, 30 Jan 2020 09:42:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dItq9bmN7TWf for <devel@linuxdriverproject.org>;
 Thu, 30 Jan 2020 09:42:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A434585727
 for <devel@driverdev.osuosl.org>; Thu, 30 Jan 2020 09:42:02 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00U9cBCP038371;
 Thu, 30 Jan 2020 09:42:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=0og+jrYQCRlDYW/CzD3/8NfXAB9kciV4BQAj0SPLmyE=;
 b=fJHuLhhhBycwkIdNvXPucQQ+4rV5a6sXyoxMX/WhNDvRFDd037vSWRZz/zVIDQ75WV2O
 4dAhNTfVC8BBCKIjcYLgrUj0kL4gKQrXzwylSKLsAmE2E2MygWS3Cf38WkGZuW6IbMag
 POCzoEzwLtWU02STufIsFJG0lInDDeNtpUD4Bg+DB6tlRJbITjr752kCZNg1f3UCvB+Q
 93DMh63MTCrjuWP77LXHJFW/3GJilUiueT+OvZyXddze/dm4Dqj1o8vrWo/Y2QoGMPe1
 s1+MciY1sVDIzpj9yhkdyOxlzRYeuQBMFFpqk7+5Aly1oqPUFe6KZCyJ4XAB93WIX5ZE mA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2xrearjpn1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 Jan 2020 09:42:00 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00U9dBqu105945;
 Thu, 30 Jan 2020 09:42:00 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2xu8e8aec3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 Jan 2020 09:41:59 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00U9fqMW014053;
 Thu, 30 Jan 2020 09:41:52 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 30 Jan 2020 01:41:51 -0800
Date: Thu, 30 Jan 2020 12:41:42 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
Subject: Re: [PATCH v2] staging: exfat: remove 'vol_type' variable.
Message-ID: <20200130094142.GC1778@kadam>
References: <20200130070614.11999-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130070614.11999-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9515
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001300068
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9515
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001300068
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 motai.hirotaka@aj.mitsubishielectric.co.jp,
 Mori.Takahiro@ab.MitsubishiElectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jan 30, 2020 at 04:06:13PM +0900, Tetsuhiro Kohada wrote:
> remove 'vol_type' variable.
> 
> The following issues are described in exfat's TODO.
> > clean up the remaining vol_type checks, which are of two types:
> > some are ?: operators with magic numbers, and the rest are places
> > where we're doing stuff with '.' and '..'.
> 
> The vol_type variable is always set to 'EXFAT'.
> The variable checks are unnessesary, so remove unused code.
> 
> Signed-off-by: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
> Reviewed-by: Mori Takahiro <Mori.Takahiro@ab.MitsubishiElectric.co.jp>
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> Changes in v2:
> - Remove wrong check in exfat_readdir(), as suggested by Dan Carpenter.

We wouldn't normally give a Suggested-by tag for this, but no one counts
Suggested-by tags anyway so it doesn't matter.

Looks good.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
