Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C73F9DE3
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Nov 2019 00:13:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B52F9859D6;
	Tue, 12 Nov 2019 23:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 22u-T2SdHFgE; Tue, 12 Nov 2019 23:13:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5CA58589C;
	Tue, 12 Nov 2019 23:13:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D630D1BF44A
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 23:13:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE6DB860A8
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 23:13:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GO1gX83-aj1a for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 23:13:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D12278608B
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 23:13:13 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id v8so240693lfa.12
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 15:13:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ij9cU3rzSNwe6IMkfMROpz0oxgYd0m7kzKqASM4qZ7U=;
 b=DtAw5Py86LlSHnBNX924EIO2myy2vtJoK3nvel3zsBct8EwNvuxdPT1w0f9osz9Qrf
 aIJv4WhWxkQEiUyM15vAAkE20vzOMZutJ7k4kYq5Z8TS3WFJxPAqeaPh8v7NE3WTHxsA
 2Zm4UcyyU5KtXn1kaL5zoJE/c4C81Ph3eFAgY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ij9cU3rzSNwe6IMkfMROpz0oxgYd0m7kzKqASM4qZ7U=;
 b=n3z3VB2X7t8zHyUBMJNYsH90mC5Tl5U8RNnANhH0AA7+KjNRUH9UOV4jKWN3Rba/OJ
 GoxS95vAc8FaNu6+Lb2dt3zCOtUnsV7c9PtECoS85H/dJZHt3oKbBnx/2v9flaF3bJi3
 3nIJ7lXxksQmbgps1tLP9y7JDRJnj6fngrALBdzRqd+grMMu1OXLyV7JARRyweE8PsRn
 gB7UtWz5pM6m7aVoWhgFv0TPr/gn9QK6MBGD33Jfr9poXDgpRq+uqboOaC0gzIjuzZbD
 ZosUoccg2NShPDP3p7t9UFXAFnRUnICxv/dmPvYIHbqWc+Er07B2SwmEtYs4NqrozsVu
 RBxg==
X-Gm-Message-State: APjAAAU6PpzcQwCHSRloO88WiLZYHWjO+azy3MsKnTpXtXR6XucUwVvF
 06LI8z9afLF5opQ7IV1IBfm9eCsFB0A=
X-Google-Smtp-Source: APXvYqzruMBVIRRrT3IlsO6ZqtTpF055EhzTXOzqPScn/2qLqoyGdjymVRJ5Lfe8mNjXq9quvCkbTw==
X-Received: by 2002:a19:40cf:: with SMTP id n198mr231717lfa.189.1573600391335; 
 Tue, 12 Nov 2019 15:13:11 -0800 (PST)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com.
 [209.85.208.175])
 by smtp.gmail.com with ESMTPSA id c22sm61150ljk.43.2019.11.12.15.13.10
 for <devel@linuxdriverproject.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 Nov 2019 15:13:10 -0800 (PST)
Received: by mail-lj1-f175.google.com with SMTP id r7so360444ljg.2
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 15:13:10 -0800 (PST)
X-Received: by 2002:a2e:982:: with SMTP id 124mr206060ljj.48.1573600389824;
 Tue, 12 Nov 2019 15:13:09 -0800 (PST)
MIME-Version: 1.0
References: <20191110154303.GA2867499@kroah.com>
 <20191112063440.GA15951@infradead.org>
 <20191112065629.GA1242198@kroah.com> <20191112225427.GA1873491@kroah.com>
In-Reply-To: <20191112225427.GA1873491@kroah.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 12 Nov 2019 15:12:53 -0800
X-Gmail-Original-Message-ID: <CAHk-=wiLZpyGyOcymND-Pk7_a_MXHZHJtsT9TryHmZBE7Babiw@mail.gmail.com>
Message-ID: <CAHk-=wiLZpyGyOcymND-Pk7_a_MXHZHJtsT9TryHmZBE7Babiw@mail.gmail.com>
Subject: Re: [PATCH] vboxsf: move out of staging to fs/
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: Christoph Hellwig <hch@infradead.org>, Hans de Goede <hdegoede@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Nov 12, 2019 at 2:54 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> Christoph, this is what you mean, right?  If so, I'll send this to Linus
> later this week, or he can grab it right from this patch :)

No.

I was unhappy about a staging driver being added in rc7, but I went
"whatever, it's Greg's garbage"

There is no way in hell I will take a new filesystem in rc8.

Would you take that into stable? No, you wouldn't. Then why is this
being upstreamed now.

Honestly, I think I'll just delete the whole thing, since it shouldn't
have gone in in the first place. This is not how we add new
filesystems.

             Linus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
