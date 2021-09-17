Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F73440FFF5
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Sep 2021 21:49:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 43413404A9;
	Fri, 17 Sep 2021 19:49:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TjFqyjCPFD_H; Fri, 17 Sep 2021 19:49:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 17B284023D;
	Fri, 17 Sep 2021 19:49:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6109D1BF350
 for <devel@linuxdriverproject.org>; Fri, 17 Sep 2021 19:49:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5A0B64023D
 for <devel@linuxdriverproject.org>; Fri, 17 Sep 2021 19:49:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D9RxNSxdp3gX for <devel@linuxdriverproject.org>;
 Fri, 17 Sep 2021 19:49:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com
 [209.85.161.50])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 64FD9400EA
 for <devel@driverdev.osuosl.org>; Fri, 17 Sep 2021 19:49:05 +0000 (UTC)
Received: by mail-oo1-f50.google.com with SMTP id
 k20-20020a4ad114000000b0029133123994so3569425oor.4
 for <devel@driverdev.osuosl.org>; Fri, 17 Sep 2021 12:49:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=lIqQeQXnK4cjptHyGskWDQAslLOSJliGOSjwEw/Um2w=;
 b=PR1PeYgcPfEthRNZdYiFhiWYS21aps/YTMa2cAwZlWz3xKDWn+QBrq/3AZg0mdrfHE
 vRsfKRSQhMHTmrzgR3UYPv+HTI06+wzZKOJus29gXSnTek60IsWeuF6+jQaeyDZMNbbi
 RYWYwoK6GSW5Qo3mNzUV4OgdFmOIBORo9lr9HBuOzELZg+FgE6ETCzy4I7XHO3C4+yvb
 rxNHw8YtA74PusqN3Xbxn4XfcJV+cBcbtX7imHi5LTlWU6Jb87wvlnEoyPavyEJbgDxa
 wFS0fWWCYhjhLh+rRd9w4XGhx2Ti/9EHKQZRxWhKWUeKvHPb2T6iccx1pZsb2oX9x15n
 E3Lw==
X-Gm-Message-State: AOAM5306yLcAHIf/kIyBkPvWb+mFfwwtFhJTSEoZwVe3TB0bozISGt2s
 XB/+EXrXPFyf9f9QRx1yzw==
X-Google-Smtp-Source: ABdhPJxjY1Cr2X0gISlUEjpmrUwwPiPDDmYHTOQoeNCD+4D0iRzlv5pQ4zTOB4Md3k7uJKuLJjPi6Q==
X-Received: by 2002:a4a:dcd0:: with SMTP id h16mr10363770oou.44.1631908144964; 
 Fri, 17 Sep 2021 12:49:04 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id z7sm1766832oti.65.2021.09.17.12.49.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Sep 2021 12:49:03 -0700 (PDT)
Received: (nullmailer pid 2025337 invoked by uid 1000);
 Fri, 17 Sep 2021 19:48:54 -0000
From: Rob Herring <robh@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
In-Reply-To: <20210917151401.2274772-3-Jerome.Pouiller@silabs.com>
References: <20210917151401.2274772-1-Jerome.Pouiller@silabs.com>
 <20210917151401.2274772-3-Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v6 02/24] dt-bindings: introduce silabs,wfx.yaml
Date: Fri, 17 Sep 2021 14:48:54 -0500
Message-Id: <1631908134.353915.2025336.nullmailer@robh.at.kernel.org>
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
 Ulf Hansson <ulf.hansson@linaro.org>, linux-wireless@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, netdev@vger.kernel.org,
 =?utf-8?q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="===============3208876329411675902=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--===============3208876329411675902==
Content-Type: text/plain

On Fri, 17 Sep 2021 17:13:38 +0200, Jerome Pouiller wrote:
> From: Jérôme Pouiller <jerome.pouiller@silabs.com>
> 
> Prepare the inclusion of the wfx driver in the kernel.
> 
> Signed-off-by: Jérôme Pouiller <jerome.pouiller@silabs.com>
> ---
>  .../bindings/net/wireless/silabs,wfx.yaml     | 133 ++++++++++++++++++
>  1 file changed, 133 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):
Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml: Documentation/devicetree/bindings/mmc/mmc-pwrseq-simple.txt

See https://patchwork.ozlabs.org/patch/1529457

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


--===============3208876329411675902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============3208876329411675902==--
