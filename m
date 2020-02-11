Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A748158A2C
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 07:59:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7B938877B3;
	Tue, 11 Feb 2020 06:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AltKI4e6KYsm; Tue, 11 Feb 2020 06:59:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C93B887774;
	Tue, 11 Feb 2020 06:59:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4FEFB1BF23B
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 06:59:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D1608539A
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 06:59:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qmEfsYLuiekp for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 06:59:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A3C2B84EEB
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 06:59:05 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01B6x4IL175665;
 Tue, 11 Feb 2020 06:59:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=3/RgUTylOj363dbYQdeISiquGp5Fp3ARSlcrIMOOwRY=;
 b=SfBU9j5jq7OMa5GLHJ7NqdGjhC/cpzLXsAl/Su/PW3cccKpWIBXBPRX1n8VmWa+6rLuQ
 hq8vbNg6m4GZ8mR/lY1s3ydgZTjUro4mT+BO86o3JUSmm19yvQhguLGKneG2TYaABVJi
 jU4qFDRA1+ug26V3q3DXz8dJc6yWS5MO/BDWgrKNnVFqw/esEpKAwiH2CSpk9xFs1LNX
 6Br2XEhlBKEK/jw6lPp6y9myVXk2vuSWdn8LH615DdS3WZKIPJrCcETPviHOKBQkghVK
 MboIdpZVGn4l0FykTjQbI4b13OU/dGtpE/kTQ3Ix1D+OsGhvAGqx/f2YkIDgztKglcTx AQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2y2p3s96bu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Feb 2020 06:59:04 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01B6wk0k139430;
 Tue, 11 Feb 2020 06:59:04 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2y26q0qfkf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 11 Feb 2020 06:59:04 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01B6x3DX007303;
 Tue, 11 Feb 2020 06:59:03 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 10 Feb 2020 22:59:02 -0800
Date: Tue, 11 Feb 2020 09:58:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ajay.Kathat@microchip.com
Subject: Re: [PATCH 3/3] staging: wilc1000: refactor p2p action frames
 handling API's
Message-ID: <20200211065856.GD1778@kadam>
References: <20200211000652.4781-1-ajay.kathat@microchip.com>
 <20200211000652.4781-3-ajay.kathat@microchip.com>
 <20200211065101.GC1778@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200211065101.GC1778@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9527
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 spamscore=0
 mlxscore=0 adultscore=0 suspectscore=1 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002110050
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9527
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 malwarescore=0
 suspectscore=1 mlxlogscore=999 priorityscore=1501 clxscore=1015
 impostorscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002110050
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
 johannes@sipsolutions.net, linux-wireless@vger.kernel.org,
 Adham.Abozaeid@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 11, 2020 at 09:51:01AM +0300, Dan Carpenter wrote:
> On Mon, Feb 10, 2020 at 06:36:01PM +0000, Ajay.Kathat@microchip.com wrote:
> > +	if (sta_ch == WILC_INVALID_CHANNEL)
> > +		return;
> >  
> >  	while (index < len) {
> 
> This range checking was there in the original code, but it's not
> correct.  index and len are in terms of bytes so we know that we can
> read one byte from &buf[index] but we are reading a wilc_attr_entry
> struct which is larger than a type.  The struct is actually flexibly
                                ^^^^
I meant byte.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
