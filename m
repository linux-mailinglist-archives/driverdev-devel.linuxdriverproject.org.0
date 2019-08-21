Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A1896E73
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 02:39:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4CD8F23528;
	Wed, 21 Aug 2019 00:39:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QOY-KeXTBzo3; Wed, 21 Aug 2019 00:39:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B969923026;
	Wed, 21 Aug 2019 00:39:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 13E851BF989
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 00:39:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1126688649
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 00:39:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EihnldGe12zd for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 00:39:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sonic311-32.consmr.mail.ir2.yahoo.com
 (sonic311-32.consmr.mail.ir2.yahoo.com [77.238.176.164])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 09B6788648
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 00:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aol.com; s=a2048;
 t=1566347982; bh=dBz1oFdgnI/WKEGr74peQBzy6c6LbhKbyJcmv8I8LL8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject;
 b=cjO6zdAgZdoP/eR+2UwDbg4EHc7L79a8eHYvW6+PLb3NU/onSAymNusV/OQtMwCdgAbGu5Vel7ABoJcwS6+KQz1nyRlW9+33t3I2ykkDehqpkjh/5NyI/t2YcN29kXf/8yj5rn9sOmkevQCPukD78x8F2gAHfvNU1j8V/N2n+haZrDJPGs4ZzN41c7H0yop1x1p3N2pFo2M63WyW+SfVU00T2fO+FXxJ6vnbSdHQPfQWPlwerb4LADYF439OBOZ+alPE5Rpou+tauQWpUIs426kvr/JImM9FNO6IQ2R/1+C4/Gy32yvkfqotGbwpwvg86dVmqI/ipBzoluoWhoZIgw==
X-YMail-OSG: .HtFFrsVM1m6qxT_kGxPkFMO1nJ9npRODAPvKCtCYnCvOjsoN7lJpSs1yEh.JlM
 aPvjkilVSpUpBTe5FhGM8myRDj9y.Hvt_abptFP16G3ycLR7ZZqLfAZ081TXy876P5x5gpDFHqUg
 NBgUHnR8BpFeMmpkQtuMEYrrFqdHQfAENM2ocH0_kFhlKFwvoWGMHEmy6zOHDPQPi0onR4v0Irtq
 4zgYalI0OBZckbpn8mwd_RHYHhXItkFXFeh6lP8Oz76AgklOps0zvr7M0JHxWx6JTu_ZoTevUEN2
 _kEcHBfYgeXIRubAXkkml6.2QCTRfE657BNliFnClP9w1MxKJnLx0X0vA8EnN0VTPAnb5euUsMF8
 ODxliNVZ4lAmzKF6bgN9cm_EnYLzMHPyfITaKR1BhWMAagitSIp2tPETh_oGT5ayeVQbMy7MjXoy
 di5mEQ1ylQDST6CIzUQdo2o.oIa7keucoLL3xSUfshKFE60X4k9k50naVkDd4nVQJ7HmmgkA8YfI
 VWAZCOfT_iZ7_XtaEX1fYeBEAoIwiA0ZDEwazERPEoeTrX.bPi88cvmz8BehOPH3PbX4eL7llnSb
 ZEd3Uspd_.e8q.Eje1VH2AYPCWBDApMbc9c.kbjPeGR4gLDbMh7hegEDg6.vzNj.XHi3vNJHX.29
 apPZdMfViWtU1NryPvxpdLRxjxqqnI4eRMhW6UpiUW1gMc4WCwcXF6v7H4jnxXTtt1WSnCXob35g
 ytGIEE4qlzGnf5mddo7ivWrxcnwAUupipJGQDG0BLICWlRO3nAB8AcuHuzMNkQjPTEwiwldVRkcO
 c4UAty8MlhFte0CHpjrMBNdcyZa27aFrDXs_vgGV.fi47p7xI.AQ3hivjzAbLV0rTvDh8bGSfp_Y
 Ryqyq42K1YaxcCdHqdSKKXEZ5aiDDK_3gRk1v.aRfwBTmCL.0NlDSxJg19.ZtpntYAi.8DFzgnmB
 IZARlJBF5VjRT.uYAL44vnJlsCqsyNFcK.L8n6TirJ36gkee1R4IpVJttouwH1gLfeEGlCrszUFK
 r9HRz3fGS7moHe7LClIpSyrmf8aousPS8ef8MTHyKXO9MfpzAeJD9hwCo4Fjzywa3w9PE.Jt3709
 _AgVoV6UW.xTAzjPcIrWNpCkRLGPhILlKYU10jk8s8jMLDxnE2RoNgnkEvBJGrceEnFnr1JHZ2zZ
 66ZxHV9SXHbKAsGZQ3MVLeXSmmI9pADk.a2nJ3.BnTdho6UpQCz2BDCGpO1gH_7RwpX7X2CDya2x
 CHgJHxvKyVJxWWZnSJbbQ_YBMroxGTak-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.ir2.yahoo.com with HTTP; Wed, 21 Aug 2019 00:39:42 +0000
Received: by smtp405.mail.ir2.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 79fa87127151e4dc10a6f5a22ec543fa; 
 Wed, 21 Aug 2019 00:39:36 +0000 (UTC)
Date: Wed, 21 Aug 2019 08:39:29 +0800
From: Gao Xiang <hsiangkao@aol.com>
To: Caitlyn <caitlynannefinn@gmail.com>
Subject: Re: [PATCH 0/2] Submitting my first patch series (Checkpatch fixes)
Message-ID: <20190821003717.GA18606@hsiangkao-HP-ZHAN-66-Pro-G1>
References: <1566346700-28536-1-git-send-email-caitlynannefinn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566346700-28536-1-git-send-email-caitlynannefinn@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chao Yu <yuchao0@huawei.com>, linux-kernel@vger.kernel.org,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Caitlyn,

On Tue, Aug 20, 2019 at 08:18:18PM -0400, Caitlyn wrote:
> Hello!
> 
> This patch series cleans up some checkpatch fixes in erofs. The patches
> include balancing conditional braces and fixing some indentation. No testing
> done, all patches build and checkpath cleanly.

I think you need to work on the latest staging tree or linux-next.
This patchset cannot be applied (there is the only valid place in inode.c,
I will reply in the following patch.)

Thanks,
Gao Xiang

> 
> Caitlyn (2):
>   staging/erofs/xattr.h: Fixed misaligned function arguments.
>   staging/erofs: Balanced braces around a few conditional statements.
> 
>  drivers/staging/erofs/inode.c     |  4 ++--
>  drivers/staging/erofs/unzip_vle.c | 12 ++++++------
>  drivers/staging/erofs/xattr.h     |  6 +++---
>  3 files changed, 11 insertions(+), 11 deletions(-)
> 
> -- 
> 2.7.4
> 
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
