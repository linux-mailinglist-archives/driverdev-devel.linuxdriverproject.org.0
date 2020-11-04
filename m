Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD44F2A6DAF
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 20:16:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 81194860F0;
	Wed,  4 Nov 2020 19:16:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6FWudxrH6CYd; Wed,  4 Nov 2020 19:16:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5997D860EF;
	Wed,  4 Nov 2020 19:16:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8549C1BF38E
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 19:15:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8211B871C5
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 19:15:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uc6arzo3xygI for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 19:15:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 96DFD871BE
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 19:15:56 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id m26so20331166otk.11
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 11:15:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=xUeu7OjzCkWfl0q9Q0C25b2gAmYnfpfRf6sdmrxWckA=;
 b=kf/OTstmFof+IglS1OJkRANRLiC2360uGSUqaAsyjR0jqOtsYFn45cTYKBEXEp4xqj
 HbDSKcDlv6Y6fItDRZPj8OyIp9RdR1rRHbdJUaiJN4LRzt5ALNJTJGDPqni/QJzVceYI
 iajGS06kOxJCC1IWUNR3X9zr99/oHrRsoBssa6XchIJabWNk/Ha8VOxsJIlfL4OTibhM
 LsxfZRahp6K3GzvG4uhKWjV4Z0bbpC7HmKhvZXa+sdPvtqLxn1CCPMOGYchwq29DREj4
 0IyE0nReDoC6iV3FEZKKufxdDuwQ/46tGv5pbRAVso7MDhflnwuXl3VbgSrnw9IEXqdr
 tBoA==
X-Gm-Message-State: AOAM531lSasJKEBcM8oQC1hdVjafVW5z8ap98pa/k0avwcmjM5+Cj4tp
 rZvlvQocOUvqzIL8VzYeuQ==
X-Google-Smtp-Source: ABdhPJwyVB6Vxpun9Hwox5/cSocl9xkTao6ENUk5Rm2F/NY+qCi/4EYMETnsGog5AJNAArHDE5FN3w==
X-Received: by 2002:a9d:2283:: with SMTP id y3mr18865146ota.164.1604517355878; 
 Wed, 04 Nov 2020 11:15:55 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x21sm660177otk.39.2020.11.04.11.15.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 11:15:55 -0800 (PST)
Received: (nullmailer pid 3972960 invoked by uid 1000);
 Wed, 04 Nov 2020 19:15:54 -0000
Date: Wed, 4 Nov 2020 13:15:54 -0600
From: Rob Herring <robh@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v3 02/24] dt-bindings: introduce silabs,wfx.yaml
Message-ID: <20201104191554.GA3972736@bogus>
References: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
 <20201104155207.128076-3-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104155207.128076-3-Jerome.Pouiller@silabs.com>
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
 Ulf Hansson <ulf.hansson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, netdev@vger.kernel.org,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 04 Nov 2020 16:51:45 +0100, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  .../bindings/net/wireless/silabs,wfx.yaml     | 131 ++++++++++++++++++
>  1 file changed, 131 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/wireless/silabs=
,wfx.yaml
> =



My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/wi=
reless/silabs,wfx.yaml: 'additionalProperties' is a required property
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/net/wi=
reless/silabs,wfx.yaml: ignoring, error in schema: =

warning: no schema found in file: ./Documentation/devicetree/bindings/net/w=
ireless/silabs,wfx.yaml


See https://patchwork.ozlabs.org/patch/1394182

The base for the patch is generally the last rc1. Any dependencies
should be noted.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
