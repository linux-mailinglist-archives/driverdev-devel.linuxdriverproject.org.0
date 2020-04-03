Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6101B19CE3C
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 03:41:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7F84F20484;
	Fri,  3 Apr 2020 01:41:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p6CjHNbPS3J4; Fri,  3 Apr 2020 01:41:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 839AC20414;
	Fri,  3 Apr 2020 01:41:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 56A071BF3C6
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 01:41:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 505DB20432
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 01:41:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D4GOSwJI+Pgk for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 01:41:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-op-o13.zoho.com (sender4-op-o13.zoho.com
 [136.143.188.13])
 by silver.osuosl.org (Postfix) with ESMTPS id 5A1D320414
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 01:41:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1585878067; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=Dw59/79dQ/+JzjrxTuRueZQ5vqi5WEKEjdkB6YCSoySXp5RpbFUlRXw5ymn30pfGKx492atfkVCQmAXumkPbibm2qQ2Ol2hslY8t98SuktobZ0OX4oBn1Gf6qZo2LN8zieAraaizWvRF0Il0vcDzlPz5sCQNWXXtndAIgEawp0M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1585878067;
 h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=a2E/ML9QEADhvjruGSmF/oci0J1Ogghj5dsuSj5L6U0=; 
 b=JrwvJ7xixVNDDJ5wrfwPNlxLl9o2EUalHCfUD8bGt09Ik+gCyRvHkWZTTpwQzABYIPmkv6Fgb+JvF3h05RrPcaTXZAcegXFXQEmV0NbhNVXwhCFWUMgepo+uBir/Jh20+eHHczq7DWTH3Se770rIhDKw84RMfg9ryfJLYZyv9Bk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=hurranet.com;
 spf=pass  smtp.mailfrom=aiman.najjar@hurranet.com;
 dmarc=pass header.from=<aiman.najjar@hurranet.com>
 header.from=<aiman.najjar@hurranet.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585878067; 
 s=zoho; d=hurranet.com; i=aiman.najjar@hurranet.com;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
 bh=a2E/ML9QEADhvjruGSmF/oci0J1Ogghj5dsuSj5L6U0=;
 b=pGuT63nBZlcAXOhB4HkGgt4LWumaW3GzSuIVZ3kEbGjiEqOD/9B0hQZui1QTiuz3
 AwrGWSCSshsxEQxy20E3odtExJ0iY69ZOQVIvsWmSRzGtazpdSH1HQR4EFtQCVFuMNO
 YSY6KEmSndDnt6RhA9utorZmq2cLTM9NZDjnybuY=
Received: from pop-os (097-100-022-132.res.spectrum.com [97.100.22.132]) by
 mx.zohomail.com with SMTPS id 1585878063281389.5278428735503;
 Thu, 2 Apr 2020 18:41:03 -0700 (PDT)
Date: Thu, 2 Apr 2020 21:41:01 -0400
From: Aiman Najjar <aiman.najjar@hurranet.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v3 0/5] staging: rtl8712: rtl871x_xmit.{c, h} code style
 improvements
Message-ID: <20200403014059.GA4077@pop-os.localdomain>
References: <cover.1585508171.git.aiman.najjar@hurranet.com>
 <20200402102906.GK2001@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402102906.GK2001@kadam>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Joe Perches <joe@perches.com>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thanks Dan for your review!!

On Thu, Apr 02, 2020 at 01:29:06PM +0300, Dan Carpenter wrote:
> Looks good.  Thanks!
> 
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
