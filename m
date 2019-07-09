Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D69D562DAF
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 03:52:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D4B1E866A7;
	Tue,  9 Jul 2019 01:52:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sm-+-8QJPZmJ; Tue,  9 Jul 2019 01:52:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 72F8786645;
	Tue,  9 Jul 2019 01:52:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 28D3E1BF3F7
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 01:52:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 25723878AF
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 01:52:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id okRhcEj5-vBr for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 01:52:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8BA8D86CDC
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 01:52:49 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id j5so20353775ioj.8
 for <devel@driverdev.osuosl.org>; Mon, 08 Jul 2019 18:52:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=s4iT/C+ZTI6lS8Y15mNcXYBDPJVtxfB5rOYQ4KRci6s=;
 b=no/uXL8YV/vVLGm5pbNodaR9F5Q0YeJEVP6MQb6qFSfAgv5T6JtjTyGtmvlsAL4Lt+
 Wrgh+89LPV0lympoNaojTx/Bj5hl7nE4IH4z/ol8+YzPIkovZs0vNMzJPEMHXQmSJt7I
 DgDlEsDjTPV41YOUW0yF//LYYPCUWLfro3A0rWBXJrp/9tCWOnbtGrwYopyqVsb06xFL
 3a5dk6kkurnhYaRfNp4PzkJ+bfZ5mVzU7GMfMDmw2Yg7vV7HDwquJr+Emr0P6WraNg19
 yFjUV5e3xgeiNUCkPI75Vy/Bh30nhlXeOuuWTGRZzvTPWZEHpRd9Ty+inwNuL0mXjyct
 Yh+g==
X-Gm-Message-State: APjAAAXkIsellyBs/HgeyC7DrleyfPh0HHNBLXCKgwVTOQG3tXaL2two
 JSz4EyHzwV+MlwbI1bZPfg==
X-Google-Smtp-Source: APXvYqxAB1vUvIqVP37afapbU1uZ0daFlx54UYQyhhrcCjs15oV7Bjsh/pZuPcpplBZBcFsuEEQPHw==
X-Received: by 2002:a02:cd83:: with SMTP id l3mr24635684jap.66.1562637168778; 
 Mon, 08 Jul 2019 18:52:48 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id w23sm34368748ioa.51.2019.07.08.18.52.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 18:52:48 -0700 (PDT)
Date: Mon, 8 Jul 2019 19:52:47 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>
Subject: Re: [PATCH v2 3/3] media: dt-bindings: imx7-csi: add i.MX6UL/L support
Message-ID: <20190709015247.GA25557@bogus>
References: <20190606153825.8183-1-sebastien.szymanski@armadeus.com>
 <20190606153825.8183-3-sebastien.szymanski@armadeus.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606153825.8183-3-sebastien.szymanski@armadeus.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Mark Rutland <mark.rutland@arm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 =?iso-8859-1?Q?S=E9bastien?= Szymanski <sebastien.szymanski@armadeus.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu,  6 Jun 2019 17:38:25 +0200, =3D?UTF-8?q?S=3DC3=3DA9bastien=3D20Szym=
anski?=3D          wrote:
> Document "fsl,imx6ul-csi" entry.
> =

> Signed-off-by: S=E9bastien Szymanski <sebastien.szymanski@armadeus.com>
> ---
> =

> Changes for v2:
>  - New patch to document new "fsl,imx6ul-csi" entry.
> =

>  Documentation/devicetree/bindings/media/imx7-csi.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =


Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
