Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDF21981A7
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 18:49:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2636322EC9;
	Mon, 30 Mar 2020 16:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gbO6UNqsftOi; Mon, 30 Mar 2020 16:49:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EE9542010A;
	Mon, 30 Mar 2020 16:49:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 869971BF349
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 16:49:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 826A9203C9
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 16:49:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kR5qTCG6BBPl for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 16:49:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 01AB72010A
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 16:49:25 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id 22so8856417pfa.9
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 09:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=gx8Kl8+EY+rcRBFr5LGlmy7WmWDFnO/S1WsycTlgciI=;
 b=AlBhFaJpybQjT+Y/R1/ukeYB8p7OXgFWmlij6thTPNfDrjqf12rMx3IRH7bg5p6ql6
 DPl8LDEIaW4+x6aiLqi2bR+6/RkniLZ3ajBUCzE65LOdEAtaN4IabsmyA7uJlQSb1cKq
 eNoUcEN7AWtUXbkSKw5UnubTYhIJWS5NTXeLhQV6MU5LbEbB8B0BV/6T6yGSkrkdcUWY
 m/3YW5cMULoqZLL0Ujkx+RnuZMAoZuSqlN9SXa/mo0PSrL4XrB+Oz9WF265Ei1ky8n6m
 wkCy7YZbAWqtbEOXA7RMq9RAuJWnEmggxo/hrORxKeC7u36jH1s4h9cij+ufDWSmSF/A
 yWoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=gx8Kl8+EY+rcRBFr5LGlmy7WmWDFnO/S1WsycTlgciI=;
 b=mfpy5yp/kwcKBOuOSwrLqcL+jjeayHtUoloG6FNFF4OpPSB4mOYuOwHxNu2q5DGEOe
 KKi4N01XC8uOFxk+EvSFh+jitcU4f1qpmrvxTiFitb0W0Ro0hb9e/Lq4nh9b7G3s+U9w
 69MXpdjTqjmo7PeNOJQikGCCRU2XVn6VQYXfxnKqZte5GDYo/inPbeiGt/Ei2XXQubSf
 9cTrbRM2Bl9ewYdPI4Lmn47vKNESbJzcO1Wwnk0WgAaa7rm9GNOCWmyg3wx5UKmC6cGo
 77pY0zF4+Tmn/M3MoMgcliHGVduzuTvHgfGiXI+31adneKggsk/6GO4MEP3ySrKnpGCL
 FkBg==
X-Gm-Message-State: ANhLgQ0Lcy4EHat9fUl5AR2KPhFjo5gR1UyPcoTHjmLHVhcVeMvnuJcl
 emxV2RjAY6G4iwId/TuWnvQ=
X-Google-Smtp-Source: ADFU+vtRJMNIDAiTCtZ39ZJm5gXb64KJVU5KLLDxAZWgYFxaOWcjSZFmmb2OUvWsIYpSUmik+0JT2w==
X-Received: by 2002:a63:18b:: with SMTP id 133mr13911508pgb.422.1585586965663; 
 Mon, 30 Mar 2020 09:49:25 -0700 (PDT)
Received: from ManjaroKDE ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id h4sm10587870pfg.177.2020.03.30.09.49.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 09:49:25 -0700 (PDT)
Message-ID: <5bc717b81ae009b5a1e47607f23afd3b3c23b102.camel@gmail.com>
Subject: Re: [PATCH v3] staging: vt6656: add error code handling to unused
 variable
From: John Wyatt <jbwyatt4@gmail.com>
To: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Date: Mon, 30 Mar 2020 09:49:19 -0700
In-Reply-To: <20200330154600.GA125210@jiffies>
References: <20200329084320.619503-1-jbwyatt4@gmail.com>
 <20200330154600.GA125210@jiffies>
User-Agent: Evolution 3.36.1 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Stefano Brivio <sbrivio@redhat.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com,
 Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-03-30 at 16:46 +0100, Quentin Deslandes wrote:
> On 03/29/20 01:43:20, John B. Wyatt IV wrote:
> > Add error code handling to unused 'ret' variable that was never
> > used.
> > Return an error code from functions called within
> > vnt_radio_power_on.
> > 
> > Issue reported by coccinelle (coccicheck).
> > 
> > Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> > Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > ---
> > v3: Forgot to add v2 code changes to commit.
> > 
> > v2: Replace goto statements with return.
> >     Remove last if check because it was unneeded.
> >     Suggested-by: Julia Lawall <julia.lawall@inria.fr>
> 
> Because it's after the comment line (---), this Suggested-by tag will
> be
> stripped-off when applying the patch.

Understood.

> If you could fix it, then add my review tag.
> 
> Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
> 
> Thanks,
> Quentin

Done. Please see v4.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
