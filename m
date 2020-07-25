Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 096DF22D768
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 14:07:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A985286F4E;
	Sat, 25 Jul 2020 12:07:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yVvbG4A4sde5; Sat, 25 Jul 2020 12:07:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ABFEC86511;
	Sat, 25 Jul 2020 12:07:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6B00D1BF36C
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 12:07:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 65CC72036E
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 12:07:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YlaUqyoDgPIb for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 12:07:08 +0000 (UTC)
X-Greylist: delayed 00:05:14 by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by silver.osuosl.org (Postfix) with ESMTPS id 127F920496
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 12:07:08 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 4BDPn81jwXz4D;
 Sat, 25 Jul 2020 14:01:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1595678509; bh=w3jUGDxRIp+sGpE9bEyj0oc+ewSofeGPQslarzeKxxo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PPNCdzhyzVxX03mIEivhG7d/l2lFQD2BCi4mXt9uALM0rUoA3As8RN4hksjdd9FYl
 /ZTPDoAlxYg+lRbB/iSg4TQVhZ/DGCMOOIS3GHG1+fF6j2muJrefXUANdfObiX4alB
 Pt/YVFHIwSKttoxv+geGRe/fz1TtLgYdZ6ZQoRxBxB9r5aVBc22MpyyiqWvfeIHnjV
 SPYtgHdNAfeNXAUq0y2rvG317NDE1ThkfGi+addFjm/fKwZov6HKJHzzpVMsHwpmH3
 eibaAFS81VCVyWKs0cyh5ZTwxa7KKeI7F3kyzrNnh852vUCE4GmWvNo1lFikhp0vw8
 nGT2jBMykX3Fg==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.3 at mail
Date: Sat, 25 Jul 2020 14:01:47 +0200
From: =?iso-8859-2?B?TWljaGGzoE1pcm9zs2F3?= <mirq-linux@rere.qmqm.pl>
To: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Subject: Re: [PATCH v4] staging: nvec: change usage of slave to secondary
Message-ID: <20200725120146.GB26689@qmqm.qmqm.pl>
References: <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
 <20200725062938.15388-1-bharadwaj.rohit8@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200725062938.15388-1-bharadwaj.rohit8@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Dan Carpenter <dan.carpenter@oracle.com>, p.zabel@pengutronix.de,
 linux-tegra@vger.kernel.org, ac100@lists.launchpad.net
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 25, 2020 at 11:59:39AM +0530, Rohit K Bharadwaj wrote:
> changed usage of slave (which is deprecated) to secondary without breakin=
g the driver

The relevant I2C and SMBus standards use master/slave terminology. Why are
you changing the names to something unfamiliar?

If the reason are the recent coding-style changes, then please note they
are about avoiding introducing *NEW* uses of the specific words and not
about blindly replacing existing occurrences.

Best Regards
Micha=B3=A0Miros=B3aw
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
